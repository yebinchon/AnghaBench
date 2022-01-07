
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int input_val; int input_dirty; int freqSelector; int freqDirty; } ;


 int PVR2_CVAL_INPUT_DTV ;
 int PVR2_CVAL_INPUT_RADIO ;
 int PVR2_CVAL_INPUT_TV ;

__attribute__((used)) static int pvr2_hdw_set_input(struct pvr2_hdw *hdw,int v)
{
 if (hdw->input_val != v) {
  hdw->input_val = v;
  hdw->input_dirty = !0;
 }




 if (hdw->input_val == PVR2_CVAL_INPUT_RADIO) {
  hdw->freqSelector = 0;
  hdw->freqDirty = !0;
 } else if ((hdw->input_val == PVR2_CVAL_INPUT_TV) ||
     (hdw->input_val == PVR2_CVAL_INPUT_DTV)) {
  hdw->freqSelector = 1;
  hdw->freqDirty = !0;
 }
 return 0;
}
