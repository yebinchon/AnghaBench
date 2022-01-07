
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ext_controls {scalar_t__ ctrl_class; int count; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {scalar_t__ id; int value; } ;
struct TYPE_2__ {int pre_emphasis; } ;
struct poseidon {TYPE_1__ radio_data; } ;
struct file {struct poseidon* private_data; } ;


 int EINVAL ;
 int MAX_PREEMPHASIS ;
 scalar_t__ V4L2_CID_TUNE_PREEMPHASIS ;
 scalar_t__ V4L2_CTRL_CLASS_FM_TX ;

__attribute__((used)) static int tlg_fm_vidioc_g_exts_ctrl(struct file *file, void *fh,
    struct v4l2_ext_controls *ctrls)
{
 struct poseidon *p = file->private_data;
 int i;

 if (ctrls->ctrl_class != V4L2_CTRL_CLASS_FM_TX)
  return -EINVAL;

 for (i = 0; i < ctrls->count; i++) {
  struct v4l2_ext_control *ctrl = ctrls->controls + i;

  if (ctrl->id != V4L2_CID_TUNE_PREEMPHASIS)
   continue;

  if (i < MAX_PREEMPHASIS)
   ctrl->value = p->radio_data.pre_emphasis;
 }
 return 0;
}
