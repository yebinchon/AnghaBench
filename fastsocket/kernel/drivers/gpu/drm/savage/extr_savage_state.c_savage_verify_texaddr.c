
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int texture_offset; int texture_size; TYPE_1__* agp_textures; } ;
typedef TYPE_2__ drm_savage_private_t ;
struct TYPE_4__ {int offset; int size; } ;


 int DRM_ERROR (char*,int,int) ;
 int EINVAL ;

__attribute__((used)) static int savage_verify_texaddr(drm_savage_private_t * dev_priv, int unit,
     uint32_t addr)
{
 if ((addr & 6) != 2) {
  DRM_ERROR("bad texAddr%d %08x (reserved bits)\n", unit, addr);
  return -EINVAL;
 }
 if (!(addr & 1)) {
  addr &= ~7;
  if (addr < dev_priv->texture_offset ||
      addr >= dev_priv->texture_offset + dev_priv->texture_size) {
   DRM_ERROR
       ("bad texAddr%d %08x (local addr out of range)\n",
        unit, addr);
   return -EINVAL;
  }
 } else {
  if (!dev_priv->agp_textures) {
   DRM_ERROR("bad texAddr%d %08x (AGP not available)\n",
      unit, addr);
   return -EINVAL;
  }
  addr &= ~7;
  if (addr < dev_priv->agp_textures->offset ||
      addr >= (dev_priv->agp_textures->offset +
        dev_priv->agp_textures->size)) {
   DRM_ERROR
       ("bad texAddr%d %08x (AGP addr out of range)\n",
        unit, addr);
   return -EINVAL;
  }
 }
 return 0;
}
