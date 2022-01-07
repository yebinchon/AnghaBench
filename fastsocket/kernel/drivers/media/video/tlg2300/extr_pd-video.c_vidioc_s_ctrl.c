
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int value; int id; } ;
struct tuner_custom_parameter_s {int param_id; int param_value; int member_0; } ;
struct poseidon_control {int vc_id; } ;
struct poseidon {int lock; } ;
struct front_face {struct poseidon* pd; } ;
struct file {int dummy; } ;
typedef int s32 ;


 int EINVAL ;
 int HZ ;
 int TAKE_REQUEST ;
 int TASK_INTERRUPTIBLE ;
 int TUNER_CUSTOM_PARAMETER ;
 struct poseidon_control* check_control_id (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout (int) ;
 int send_set_req (struct poseidon*,int ,int,int*) ;
 int set_current_state (int ) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *fh, struct v4l2_control *a)
{
 struct tuner_custom_parameter_s param = {0};
 struct poseidon_control *control = ((void*)0);
 struct front_face *front = fh;
 struct poseidon *pd = front->pd;
 s32 ret = 0, cmd_status, params;

 control = check_control_id(a->id);
 if (!control)
  return -EINVAL;

 param.param_value = a->value;
 param.param_id = control->vc_id;
 params = *(s32 *)&param;

 mutex_lock(&pd->lock);
 ret = send_set_req(pd, TUNER_CUSTOM_PARAMETER, params, &cmd_status);
 ret = send_set_req(pd, TAKE_REQUEST, 0, &cmd_status);
 mutex_unlock(&pd->lock);

 set_current_state(TASK_INTERRUPTIBLE);
 schedule_timeout(HZ/4);
 return ret;
}
