
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drm_mga_private_t ;


 int DRM_ERROR (char*,unsigned int,unsigned int) ;
 int EINVAL ;
 unsigned int MGA_SRCACC_PCI ;
 unsigned int MGA_SRCMAP_SYSMEM ;

__attribute__((used)) static int mga_verify_blit(drm_mga_private_t *dev_priv,
      unsigned int srcorg, unsigned int dstorg)
{
 if ((srcorg & 0x3) == (MGA_SRCACC_PCI | MGA_SRCMAP_SYSMEM) ||
     (dstorg & 0x3) == (MGA_SRCACC_PCI | MGA_SRCMAP_SYSMEM)) {
  DRM_ERROR("*** bad blit: src=0x%x dst=0x%x\n", srcorg, dstorg);
  return -EINVAL;
 }
 return 0;
}
