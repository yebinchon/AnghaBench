
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_ext_controls {scalar_t__ ctrl_class; int count; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {scalar_t__ id; size_t value; } ;
struct TYPE_2__ {int pre_emphasis; } ;
struct poseidon {TYPE_1__ radio_data; } ;
struct file {struct poseidon* private_data; } ;


 int EINVAL ;
 size_t MAX_PREEMPHASIS ;
 int TUNER_AUD_ANA_STD ;
 scalar_t__ V4L2_CID_TUNE_PREEMPHASIS ;
 scalar_t__ V4L2_CTRL_CLASS_FM_TX ;
 int* preemphasis ;
 int send_set_req (struct poseidon*,int ,int,int *) ;

__attribute__((used)) static int tlg_fm_vidioc_s_exts_ctrl(struct file *file, void *fh,
   struct v4l2_ext_controls *ctrls)
{
 int i;

 if (ctrls->ctrl_class != V4L2_CTRL_CLASS_FM_TX)
  return -EINVAL;

 for (i = 0; i < ctrls->count; i++) {
  struct v4l2_ext_control *ctrl = ctrls->controls + i;

  if (ctrl->id != V4L2_CID_TUNE_PREEMPHASIS)
   continue;

  if (ctrl->value >= 0 && ctrl->value < MAX_PREEMPHASIS) {
   struct poseidon *p = file->private_data;
   int pre_emphasis = preemphasis[ctrl->value];
   u32 status;

   send_set_req(p, TUNER_AUD_ANA_STD,
      pre_emphasis, &status);
   p->radio_data.pre_emphasis = pre_emphasis;
  }
 }
 return 0;
}
