
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int pathway_state; int state_encoder_runok; int state_decoder_run; int state_pathway_ok; int state_encoder_ok; } ;





__attribute__((used)) static int state_check_disable_encoder_run(struct pvr2_hdw *hdw)
{
 if (!hdw->state_encoder_ok) {

  return !0;
 }
 if (!hdw->state_pathway_ok) {


  return !0;
 }

 switch (hdw->pathway_state) {
 case 129:
  if (!hdw->state_decoder_run) {



   return !0;
  }
  break;
 case 128:
  if (hdw->state_encoder_runok) {







   return !0;
  }
  break;
 default:

  return !0;
 }



 return 0;
}
