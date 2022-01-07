
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct drm_radeon_driver_file_fields {scalar_t__ radeon_fb_delta; } ;
struct drm_file {struct drm_radeon_driver_file_fields* driver_priv; } ;
struct TYPE_4__ {scalar_t__ fb_location; scalar_t__ fb_size; scalar_t__ gart_size; scalar_t__ gart_vm_start; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int DRM_DEBUG (char*,unsigned int) ;
 int EINVAL ;
 scalar_t__ radeon_check_offset (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static __inline__ int radeon_check_and_fixup_offset(drm_radeon_private_t *
          dev_priv,
          struct drm_file * file_priv,
          u32 *offset)
{
 u64 off = *offset;
 u32 fb_end = dev_priv->fb_location + dev_priv->fb_size - 1;
 struct drm_radeon_driver_file_fields *radeon_priv;
 if (radeon_check_offset(dev_priv, off))
  return 0;





 if (off < (dev_priv->fb_size + dev_priv->gart_size)) {
  radeon_priv = file_priv->driver_priv;
  off += radeon_priv->radeon_fb_delta;
 }


 if (off > fb_end)
  off = off - fb_end - 1 + dev_priv->gart_vm_start;


 if (radeon_check_offset(dev_priv, off)) {
  DRM_DEBUG("offset fixed up to 0x%x\n", (unsigned int)off);
  *offset = off;
  return 0;
 }
 return -EINVAL;
}
