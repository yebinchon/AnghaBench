
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; scalar_t__ audmode; } ;
struct poseidon {int dummy; } ;
struct front_face {struct poseidon* pd; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ v4l2_audio_mode; } ;


 int EINVAL ;
 int POSEIDON_AUDIOMODS ;
 int logs (struct front_face*) ;
 TYPE_1__* pd_audio_modes ;
 int pd_vidioc_s_tuner (struct poseidon*,int) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *fh, struct v4l2_tuner *a)
{
 struct front_face *front = fh;
 struct poseidon *pd = front->pd;
 int index;

 if (0 != a->index)
  return -EINVAL;
 logs(front);
 for (index = 0; index < POSEIDON_AUDIOMODS; index++)
  if (a->audmode == pd_audio_modes[index].v4l2_audio_mode)
   return pd_vidioc_s_tuner(pd, index);
 return -EINVAL;
}
