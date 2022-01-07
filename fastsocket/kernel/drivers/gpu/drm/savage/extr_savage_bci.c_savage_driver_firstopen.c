
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int pdev; TYPE_2__* dev_private; } ;
struct TYPE_4__ {scalar_t__ chipset; int aperture; int fb; int mmio; TYPE_1__* mtrr; } ;
typedef TYPE_2__ drm_savage_private_t ;
struct TYPE_3__ {int handle; unsigned long base; int size; } ;


 int DRM_ERROR (char*,unsigned long long) ;
 int DRM_MTRR_WC ;
 scalar_t__ S3_SAVAGE2000 ;
 scalar_t__ S3_SAVAGE3D_SERIES (scalar_t__) ;
 scalar_t__ S3_SUPERSAVAGE ;
 unsigned long SAVAGE_APERTURE_OFFSET ;
 unsigned long SAVAGE_APERTURE_SIZE ;
 unsigned long SAVAGE_FB_SIZE_S3 ;
 unsigned long SAVAGE_FB_SIZE_S4 ;
 unsigned long SAVAGE_MMIO_SIZE ;
 int _DRM_FRAME_BUFFER ;
 int _DRM_READ_ONLY ;
 int _DRM_REGISTERS ;
 int _DRM_WRITE_COMBINING ;
 int drm_addmap (struct drm_device*,unsigned long,unsigned long,int ,int ,int *) ;
 void* drm_mtrr_add (unsigned long,int,int ) ;
 int pci_resource_len (int ,int) ;
 unsigned long pci_resource_start (int ,int) ;

int savage_driver_firstopen(struct drm_device *dev)
{
 drm_savage_private_t *dev_priv = dev->dev_private;
 unsigned long mmio_base, fb_base, fb_size, aperture_base;




 unsigned int fb_rsrc, aper_rsrc;
 int ret = 0;

 dev_priv->mtrr[0].handle = -1;
 dev_priv->mtrr[1].handle = -1;
 dev_priv->mtrr[2].handle = -1;
 if (S3_SAVAGE3D_SERIES(dev_priv->chipset)) {
  fb_rsrc = 0;
  fb_base = pci_resource_start(dev->pdev, 0);
  fb_size = SAVAGE_FB_SIZE_S3;
  mmio_base = fb_base + SAVAGE_FB_SIZE_S3;
  aper_rsrc = 0;
  aperture_base = fb_base + SAVAGE_APERTURE_OFFSET;

  if (pci_resource_len(dev->pdev, 0) == 0x08000000) {


   dev_priv->mtrr[0].base = fb_base;
   dev_priv->mtrr[0].size = 0x01000000;
   dev_priv->mtrr[0].handle =
       drm_mtrr_add(dev_priv->mtrr[0].base,
             dev_priv->mtrr[0].size, DRM_MTRR_WC);
   dev_priv->mtrr[1].base = fb_base + 0x02000000;
   dev_priv->mtrr[1].size = 0x02000000;
   dev_priv->mtrr[1].handle =
       drm_mtrr_add(dev_priv->mtrr[1].base,
      dev_priv->mtrr[1].size, DRM_MTRR_WC);
   dev_priv->mtrr[2].base = fb_base + 0x04000000;
   dev_priv->mtrr[2].size = 0x04000000;
   dev_priv->mtrr[2].handle =
       drm_mtrr_add(dev_priv->mtrr[2].base,
      dev_priv->mtrr[2].size, DRM_MTRR_WC);
  } else {
   DRM_ERROR("strange pci_resource_len %08llx\n",
      (unsigned long long)
      pci_resource_len(dev->pdev, 0));
  }
 } else if (dev_priv->chipset != S3_SUPERSAVAGE &&
     dev_priv->chipset != S3_SAVAGE2000) {
  mmio_base = pci_resource_start(dev->pdev, 0);
  fb_rsrc = 1;
  fb_base = pci_resource_start(dev->pdev, 1);
  fb_size = SAVAGE_FB_SIZE_S4;
  aper_rsrc = 1;
  aperture_base = fb_base + SAVAGE_APERTURE_OFFSET;

  if (pci_resource_len(dev->pdev, 1) == 0x08000000) {


   dev_priv->mtrr[0].base = fb_base;
   dev_priv->mtrr[0].size = 0x08000000;
   dev_priv->mtrr[0].handle =
       drm_mtrr_add(dev_priv->mtrr[0].base,
      dev_priv->mtrr[0].size, DRM_MTRR_WC);
  } else {
   DRM_ERROR("strange pci_resource_len %08llx\n",
      (unsigned long long)
      pci_resource_len(dev->pdev, 1));
  }
 } else {
  mmio_base = pci_resource_start(dev->pdev, 0);
  fb_rsrc = 1;
  fb_base = pci_resource_start(dev->pdev, 1);
  fb_size = pci_resource_len(dev->pdev, 1);
  aper_rsrc = 2;
  aperture_base = pci_resource_start(dev->pdev, 2);

 }

 ret = drm_addmap(dev, mmio_base, SAVAGE_MMIO_SIZE, _DRM_REGISTERS,
    _DRM_READ_ONLY, &dev_priv->mmio);
 if (ret)
  return ret;

 ret = drm_addmap(dev, fb_base, fb_size, _DRM_FRAME_BUFFER,
    _DRM_WRITE_COMBINING, &dev_priv->fb);
 if (ret)
  return ret;

 ret = drm_addmap(dev, aperture_base, SAVAGE_APERTURE_SIZE,
    _DRM_FRAME_BUFFER, _DRM_WRITE_COMBINING,
    &dev_priv->aperture);
 return ret;
}
