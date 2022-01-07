
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {scalar_t__ tuner; int type; int frequency; } ;
struct running_context {int freq; } ;
struct TYPE_2__ {struct running_context context; } ;
struct poseidon {TYPE_1__ video_data; } ;
struct front_face {struct poseidon* pd; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_ANALOG_TV ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *fh,
   struct v4l2_frequency *freq)
{
 struct front_face *front = fh;
 struct poseidon *pd = front->pd;
 struct running_context *context = &pd->video_data.context;

 if (0 != freq->tuner)
  return -EINVAL;
 freq->frequency = context->freq;
 freq->type = V4L2_TUNER_ANALOG_TV;
 return 0;
}
