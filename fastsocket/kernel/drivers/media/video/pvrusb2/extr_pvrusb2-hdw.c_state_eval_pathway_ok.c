
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int state_pathway_ok; scalar_t__ input_val; int state_pipeline_idle; } ;


 scalar_t__ PVR2_CVAL_INPUT_DTV ;
 int pvr2_hdw_cmd_modeswitch (struct pvr2_hdw*,int) ;
 int trace_stbit (char*,int) ;

__attribute__((used)) static int state_eval_pathway_ok(struct pvr2_hdw *hdw)
{
 if (hdw->state_pathway_ok) {

  return 0;
 }
 if (!hdw->state_pipeline_idle) {

  return 0;
 }
 pvr2_hdw_cmd_modeswitch(hdw,hdw->input_val == PVR2_CVAL_INPUT_DTV);
 hdw->state_pathway_ok = !0;
 trace_stbit("state_pathway_ok",hdw->state_pathway_ok);
 return !0;
}
