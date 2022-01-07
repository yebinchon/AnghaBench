
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {size_t index; scalar_t__ status; int std; scalar_t__ tuner; scalar_t__ audioset; int type; int name; } ;
struct front_face {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 size_t POSEIDON_INPUTS ;
 int V4L2_INPUT_TYPE_TUNER ;
 int V4L2_STD_ALL ;
 int logs (struct front_face*) ;
 TYPE_1__* pd_inputs ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *fh, struct v4l2_input *in)
{
 struct front_face *front = fh;

 if (in->index < 0 || in->index >= POSEIDON_INPUTS)
  return -EINVAL;
 strcpy(in->name, pd_inputs[in->index].name);
 in->type = V4L2_INPUT_TYPE_TUNER;





 in->audioset = 0;
 in->tuner = 0;
 in->std = V4L2_STD_ALL;
 in->status = 0;
 logs(front);
 return 0;
}
