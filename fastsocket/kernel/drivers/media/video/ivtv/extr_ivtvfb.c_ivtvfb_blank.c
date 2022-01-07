
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivtv {TYPE_1__* osd_info; } ;
struct fb_info {scalar_t__ par; } ;
struct TYPE_2__ {int blank_cur; } ;


 int CX2341X_OSD_SET_STATE ;





 int IVTVFB_DEBUG_INFO (char*,int) ;
 int IVTV_HW_SAA7127 ;
 int ivtv_call_hw (struct ivtv*,int ,int ,int ,int) ;
 int ivtv_vapi (struct ivtv*,int ,int,int) ;
 int s_stream ;
 int video ;

__attribute__((used)) static int ivtvfb_blank(int blank_mode, struct fb_info *info)
{
 struct ivtv *itv = (struct ivtv *)info->par;

 IVTVFB_DEBUG_INFO("Set blanking mode : %d\n", blank_mode);
 switch (blank_mode) {
 case 129:
  ivtv_vapi(itv, CX2341X_OSD_SET_STATE, 1, 1);
  ivtv_call_hw(itv, IVTV_HW_SAA7127, video, s_stream, 1);
  break;
 case 131:
 case 132:
 case 128:
  ivtv_vapi(itv, CX2341X_OSD_SET_STATE, 1, 0);
  ivtv_call_hw(itv, IVTV_HW_SAA7127, video, s_stream, 1);
  break;
 case 130:
  ivtv_call_hw(itv, IVTV_HW_SAA7127, video, s_stream, 0);
  ivtv_vapi(itv, CX2341X_OSD_SET_STATE, 1, 0);
  break;
 }
 itv->osd_info->blank_cur = blank_mode;
 return 0;
}
