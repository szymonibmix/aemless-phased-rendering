#!/bin/bash

# Create a directory to store the downloaded images
mkdir -p downloaded_images
cd downloaded_images

# Array of image URLs
urls=(
"https://main--eds-demo--szymonibmix.hlx.live/media_198e23b1db7523411c3dac33c9d58363ef0805cbf.jpeg?width=2000&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_198e23b1db7523411c3dac33c9d58363ef0805cbf.jpeg?width=750&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_198e23b1db7523411c3dac33c9d58363ef0805cbf.jpeg?width=2000&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_198e23b1db7523411c3dac33c9d58363ef0805cbf.jpeg?width=750&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_17e9dd0aae03d62b8ebe2159b154d6824ef55732d.png?width=2000&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_17e9dd0aae03d62b8ebe2159b154d6824ef55732d.png?width=750&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_17e9dd0aae03d62b8ebe2159b154d6824ef55732d.png?width=2000&format=png&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_17e9dd0aae03d62b8ebe2159b154d6824ef55732d.png?width=750&format=png&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1729f1ee89b0906b7c66c98c778581dae957f641c.png?width=2000&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1729f1ee89b0906b7c66c98c778581dae957f641c.png?width=750&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1729f1ee89b0906b7c66c98c778581dae957f641c.png?width=2000&format=png&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1729f1ee89b0906b7c66c98c778581dae957f641c.png?width=750&format=png&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_10d2145a1bd4a2c1808b6a3aa5f4d678f4fd77c62.jpeg?width=2000&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_10d2145a1bd4a2c1808b6a3aa5f4d678f4fd77c62.jpeg?width=750&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_10d2145a1bd4a2c1808b6a3aa5f4d678f4fd77c62.jpeg?width=2000&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_10d2145a1bd4a2c1808b6a3aa5f4d678f4fd77c62.jpeg?width=750&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1fa6f697de17429a7e9d0a36e5cf954884071248f.jpeg?width=2000&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1fa6f697de17429a7e9d0a36e5cf954884071248f.jpeg?width=750&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1fa6f697de17429a7e9d0a36e5cf954884071248f.jpeg?width=2000&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1fa6f697de17429a7e9d0a36e5cf954884071248f.jpeg?width=750&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1efac94231677ba3de8ad093c207eef1d3c430c0d.jpeg?width=2000&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1efac94231677ba3de8ad093c207eef1d3c430c0d.jpeg?width=750&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1efac94231677ba3de8ad093c207eef1d3c430c0d.jpeg?width=2000&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1efac94231677ba3de8ad093c207eef1d3c430c0d.jpeg?width=750&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_14693ba3c19e0f6b7ff583d60f3b8385d0e2a0182.jpeg?width=2000&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_14693ba3c19e0f6b7ff583d60f3b8385d0e2a0182.jpeg?width=750&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_14693ba3c19e0f6b7ff583d60f3b8385d0e2a0182.jpeg?width=2000&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_14693ba3c19e0f6b7ff583d60f3b8385d0e2a0182.jpeg?width=750&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_182a53ba04f2bd7151a3b5c632a45f31ceab073eb.jpeg?width=2000&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_182a53ba04f2bd7151a3b5c632a45f31ceab073eb.jpeg?width=750&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_182a53ba04f2bd7151a3b5c632a45f31ceab073eb.jpeg?width=2000&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_182a53ba04f2bd7151a3b5c632a45f31ceab073eb.jpeg?width=750&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1a28494cd8f002e18c2aa02997fe23850e157dba0.jpeg?width=2000&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1a28494cd8f002e18c2aa02997fe23850e157dba0.jpeg?width=750&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1a28494cd8f002e18c2aa02997fe23850e157dba0.jpeg?width=2000&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_1a28494cd8f002e18c2aa02997fe23850e157dba0.jpeg?width=750&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_119f4735f434eb745cdd5a0d56f002bfddfb6ff3c.jpeg?width=2000&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_119f4735f434eb745cdd5a0d56f002bfddfb6ff3c.jpeg?width=750&format=webply&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_119f4735f434eb745cdd5a0d56f002bfddfb6ff3c.jpeg?width=2000&format=jpeg&optimize=medium"
"https://main--eds-demo--szymonibmix.hlx.live/media_119f4735f434eb745cdd5a0d56f002bfddfb6ff3c.jpeg?width=750&format=jpeg&optimize=medium"
)

# Download each image
for url in "${urls[@]}"
do
  # Extract filename and parameters from URL
  filename=$(basename "$url" | cut -d? -f1)
  params=$(echo "$url" | cut -d? -f2 | tr '&' '_' | tr '=' '-')
  
  # Get file extension
  extension="${filename##*.}"
  
  # Create new filename with parameters
  new_filename="${filename%.*}_${params}.${extension}"
  
  # Download the image with the new filename
  wget -O "$new_filename" "$url"
  
  # Check if download was successful
  if [ $? -eq 0 ]; then
    echo "Successfully downloaded $new_filename"
  else
    echo "Failed to download $new_filename"
  fi
done

echo "All downloads completed."