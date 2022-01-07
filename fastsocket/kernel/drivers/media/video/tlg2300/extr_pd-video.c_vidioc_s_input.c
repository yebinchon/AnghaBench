
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int sig_index; } ;
struct TYPE_5__ {TYPE_1__ context; } ;
struct poseidon {TYPE_2__ video_data; } ;
struct front_face {struct poseidon* pd; } ;
struct file {int dummy; } ;
typedef int s32 ;
struct TYPE_6__ {int tlg_src; } ;


 int EINVAL ;
 unsigned int POSEIDON_INPUTS ;
 int SGNL_SRC_SEL ;
 TYPE_3__* pd_inputs ;
 int send_set_req (struct poseidon*,int ,int ,int*) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *fh, unsigned int i)
{
 struct front_face *front = fh;
 struct poseidon *pd = front->pd;
 s32 ret, cmd_status;

 if (i < 0 || i >= POSEIDON_INPUTS)
  return -EINVAL;
 ret = send_set_req(pd, SGNL_SRC_SEL,
   pd_inputs[i].tlg_src, &cmd_status);
 if (ret)
  return ret;

 pd->video_data.context.sig_index = i;
 return 0;
}
