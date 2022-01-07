
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_hdw {int pathway_state; TYPE_1__* hdw_desc; } ;
struct TYPE_2__ {int digital_control_scheme; } ;




 int PVR2_PATHWAY_ANALOG ;
 int PVR2_PATHWAY_DIGITAL ;
 int pvr2_hdw_cmd_decoder_reset (struct pvr2_hdw*) ;
 int pvr2_hdw_cmd_hcw_demod_reset (struct pvr2_hdw*,int) ;
 int pvr2_hdw_cmd_onair_fe_power_ctrl (struct pvr2_hdw*,int) ;
 int pvr2_hdw_untrip_unlocked (struct pvr2_hdw*) ;

__attribute__((used)) static void pvr2_hdw_cmd_modeswitch(struct pvr2_hdw *hdw,int digitalFl)
{
 int cmode;


 cmode = (digitalFl ? PVR2_PATHWAY_DIGITAL : PVR2_PATHWAY_ANALOG);
 if (cmode == hdw->pathway_state) {

  return;
 }

 switch (hdw->hdw_desc->digital_control_scheme) {
 case 129:
  pvr2_hdw_cmd_hcw_demod_reset(hdw,digitalFl);
  if (cmode == PVR2_PATHWAY_ANALOG) {




   pvr2_hdw_cmd_decoder_reset(hdw);
  }
  break;
 case 128:



  pvr2_hdw_cmd_onair_fe_power_ctrl(hdw,digitalFl);
  break;
 default: break;
 }

 pvr2_hdw_untrip_unlocked(hdw);
 hdw->pathway_state = cmode;
}
