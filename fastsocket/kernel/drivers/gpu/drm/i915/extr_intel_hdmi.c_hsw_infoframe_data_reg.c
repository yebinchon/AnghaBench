
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dip_infoframe {int type; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;




 int DRM_DEBUG_DRIVER (char*,int) ;
 int HSW_TVIDEO_DIP_AVI_DATA (int) ;
 int HSW_TVIDEO_DIP_SPD_DATA (int) ;

__attribute__((used)) static u32 hsw_infoframe_data_reg(struct dip_infoframe *frame, enum pipe pipe)
{
 switch (frame->type) {
 case 129:
  return HSW_TVIDEO_DIP_AVI_DATA(pipe);
 case 128:
  return HSW_TVIDEO_DIP_SPD_DATA(pipe);
 default:
  DRM_DEBUG_DRIVER("unknown info frame type %d\n", frame->type);
  return 0;
 }
}
