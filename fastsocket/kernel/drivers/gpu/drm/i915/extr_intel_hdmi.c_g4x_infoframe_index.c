
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dip_infoframe {int type; } ;




 int DRM_DEBUG_DRIVER (char*,int) ;
 int VIDEO_DIP_SELECT_AVI ;
 int VIDEO_DIP_SELECT_SPD ;

__attribute__((used)) static u32 g4x_infoframe_index(struct dip_infoframe *frame)
{
 switch (frame->type) {
 case 129:
  return VIDEO_DIP_SELECT_AVI;
 case 128:
  return VIDEO_DIP_SELECT_SPD;
 default:
  DRM_DEBUG_DRIVER("unknown info frame type %d\n", frame->type);
  return 0;
 }
}
