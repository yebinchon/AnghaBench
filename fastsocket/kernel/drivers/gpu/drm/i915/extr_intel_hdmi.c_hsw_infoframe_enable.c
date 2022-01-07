
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dip_infoframe {int type; } ;




 int DRM_DEBUG_DRIVER (char*,int) ;
 int VIDEO_DIP_ENABLE_AVI_HSW ;
 int VIDEO_DIP_ENABLE_SPD_HSW ;

__attribute__((used)) static u32 hsw_infoframe_enable(struct dip_infoframe *frame)
{
 switch (frame->type) {
 case 129:
  return VIDEO_DIP_ENABLE_AVI_HSW;
 case 128:
  return VIDEO_DIP_ENABLE_SPD_HSW;
 default:
  DRM_DEBUG_DRIVER("unknown info frame type %d\n", frame->type);
  return 0;
 }
}
