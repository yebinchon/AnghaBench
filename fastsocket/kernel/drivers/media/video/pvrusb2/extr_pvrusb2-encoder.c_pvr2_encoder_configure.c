
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_50hz; int height; int width; int port; } ;
struct pvr2_hdw {int std_mask_cur; TYPE_2__* hdw_desc; TYPE_1__ enc_ctl_state; int res_ver_val; int res_hor_val; } ;
struct TYPE_4__ {scalar_t__ flag_has_cx25840; } ;


 int CX2341X_ENC_INITIALIZE_INPUT ;
 int CX2341X_ENC_SET_EVENT_NOTIFICATION ;
 int CX2341X_ENC_SET_NUM_VSYNC_LINES ;
 int CX2341X_ENC_SET_VBI_LINE ;
 int CX2341X_PORT_STREAMING ;
 int PVR2_TRACE_ENCODER ;
 int PVR2_TRACE_ERROR_LEGS ;
 int V4L2_STD_525_60 ;
 int pvr2_encoder_adjust (struct pvr2_hdw*) ;
 int pvr2_encoder_prep_config (struct pvr2_hdw*) ;
 int pvr2_encoder_vcmd (struct pvr2_hdw*,int ,int,...) ;
 int pvr2_trace (int ,char*) ;

int pvr2_encoder_configure(struct pvr2_hdw *hdw)
{
 int ret;
 int val;
 pvr2_trace(PVR2_TRACE_ENCODER,"pvr2_encoder_configure"
     " (cx2341x module)");
 hdw->enc_ctl_state.port = CX2341X_PORT_STREAMING;
 hdw->enc_ctl_state.width = hdw->res_hor_val;
 hdw->enc_ctl_state.height = hdw->res_ver_val;
 hdw->enc_ctl_state.is_50hz = ((hdw->std_mask_cur & V4L2_STD_525_60) ?
          0 : 1);

 ret = 0;

 ret |= pvr2_encoder_prep_config(hdw);


 val = 0xf0;
 if (hdw->hdw_desc->flag_has_cx25840) {

  val = 0x140;
 }

 if (!ret) ret = pvr2_encoder_vcmd(
  hdw,CX2341X_ENC_SET_NUM_VSYNC_LINES, 2,
  val, val);


 if (!ret) ret = pvr2_encoder_vcmd(
  hdw,CX2341X_ENC_SET_EVENT_NOTIFICATION, 4,
  0, 0, 0x10000000, 0xffffffff);

 if (!ret) ret = pvr2_encoder_vcmd(
  hdw,CX2341X_ENC_SET_VBI_LINE, 5,
  0xffffffff,0,0,0,0);

 if (ret) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "Failed to configure cx23416");
  return ret;
 }

 ret = pvr2_encoder_adjust(hdw);
 if (ret) return ret;

 ret = pvr2_encoder_vcmd(
  hdw, CX2341X_ENC_INITIALIZE_INPUT, 0);

 if (ret) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "Failed to initialize cx23416 video input");
  return ret;
 }

 return 0;
}
