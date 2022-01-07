
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tuner_param ;
struct v4l2_control {int value; int id; } ;
struct tuner_custom_parameter_s {int param_value; } ;
struct poseidon_control {int vc_id; } ;
struct poseidon {int lock; } ;
struct front_face {struct poseidon* pd; } ;
struct file {int dummy; } ;
typedef scalar_t__ s32 ;


 int EINVAL ;
 int TUNER_CUSTOM_PARAMETER ;
 struct poseidon_control* check_control_id (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ send_get_req (struct poseidon*,int ,int ,struct tuner_custom_parameter_s*,scalar_t__*,int) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *fh, struct v4l2_control *ctrl)
{
 struct front_face *front = fh;
 struct poseidon *pd = front->pd;
 struct poseidon_control *control = ((void*)0);
 struct tuner_custom_parameter_s tuner_param;
 s32 ret = 0, cmd_status;

 control = check_control_id(ctrl->id);
 if (!control)
  return -EINVAL;

 mutex_lock(&pd->lock);
 ret = send_get_req(pd, TUNER_CUSTOM_PARAMETER, control->vc_id,
   &tuner_param, &cmd_status, sizeof(tuner_param));
 mutex_unlock(&pd->lock);

 if (ret || cmd_status)
  return -1;

 ctrl->value = tuner_param.param_value;
 return 0;
}
