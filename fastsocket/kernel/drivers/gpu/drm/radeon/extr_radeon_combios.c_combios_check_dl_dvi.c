
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct radeon_device {int flags; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int COMBIOS_EXT_TMDS_INFO_TABLE ;
 int CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D ;
 int CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I ;
 int CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D ;
 int CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I ;
 int RADEON_IS_IGP ;
 int RBIOS8 (scalar_t__) ;
 scalar_t__ combios_get_table_offset (struct drm_device*,int ) ;

__attribute__((used)) static uint16_t combios_check_dl_dvi(struct drm_device *dev, int is_dvi_d)
{
 struct radeon_device *rdev = dev->dev_private;
 uint32_t ext_tmds_info;

 if (rdev->flags & RADEON_IS_IGP) {
  if (is_dvi_d)
   return CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D;
  else
   return CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I;
 }
 ext_tmds_info = combios_get_table_offset(dev, COMBIOS_EXT_TMDS_INFO_TABLE);
 if (ext_tmds_info) {
  uint8_t rev = RBIOS8(ext_tmds_info);
  uint8_t flags = RBIOS8(ext_tmds_info + 4 + 5);
  if (rev >= 3) {
   if (is_dvi_d)
    return CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D;
   else
    return CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I;
  } else {
   if (flags & 1) {
    if (is_dvi_d)
     return CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D;
    else
     return CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I;
   }
  }
 }
 if (is_dvi_d)
  return CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D;
 else
  return CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I;
}
