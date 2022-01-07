
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {scalar_t__ type; int id; } ;
struct v4l2_ext_controls {int count; int error_idx; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {int id; } ;
struct cx2341x_mpeg_params {scalar_t__ video_bitrate_mode; scalar_t__ video_bitrate_peak; scalar_t__ video_bitrate; } ;


 int ERANGE ;
 scalar_t__ V4L2_CTRL_TYPE_MENU ;
 scalar_t__ V4L2_MPEG_VIDEO_BITRATE_MODE_VBR ;
 unsigned int VIDIOC_G_EXT_CTRLS ;
 int cx2341x_calc_audio_properties (struct cx2341x_mpeg_params*) ;
 char** cx2341x_ctrl_get_menu (struct cx2341x_mpeg_params*,int ) ;
 int cx2341x_ctrl_query (struct cx2341x_mpeg_params*,struct v4l2_queryctrl*) ;
 int cx2341x_get_ctrl (struct cx2341x_mpeg_params*,struct v4l2_ext_control*) ;
 int cx2341x_set_ctrl (struct cx2341x_mpeg_params*,int,struct v4l2_ext_control*) ;
 int v4l2_ctrl_check (struct v4l2_ext_control*,struct v4l2_queryctrl*,char const* const*) ;

int cx2341x_ext_ctrls(struct cx2341x_mpeg_params *params, int busy,
    struct v4l2_ext_controls *ctrls, unsigned int cmd)
{
 int err = 0;
 int i;

 if (cmd == VIDIOC_G_EXT_CTRLS) {
  for (i = 0; i < ctrls->count; i++) {
   struct v4l2_ext_control *ctrl = ctrls->controls + i;

   err = cx2341x_get_ctrl(params, ctrl);
   if (err) {
    ctrls->error_idx = i;
    break;
   }
  }
  return err;
 }
 for (i = 0; i < ctrls->count; i++) {
  struct v4l2_ext_control *ctrl = ctrls->controls + i;
  struct v4l2_queryctrl qctrl;
  const char * const *menu_items = ((void*)0);

  qctrl.id = ctrl->id;
  err = cx2341x_ctrl_query(params, &qctrl);
  if (err)
   break;
  if (qctrl.type == V4L2_CTRL_TYPE_MENU)
   menu_items = cx2341x_ctrl_get_menu(params, qctrl.id);
  err = v4l2_ctrl_check(ctrl, &qctrl, menu_items);
  if (err)
   break;
  err = cx2341x_set_ctrl(params, busy, ctrl);
  if (err)
   break;
 }
 if (err == 0 &&
     params->video_bitrate_mode == V4L2_MPEG_VIDEO_BITRATE_MODE_VBR &&
     params->video_bitrate_peak < params->video_bitrate) {
  err = -ERANGE;
  ctrls->error_idx = ctrls->count;
 }
 if (err)
  ctrls->error_idx = i;
 else
  cx2341x_calc_audio_properties(params);
 return err;
}
