
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int dprintk (int,char*,scalar_t__) ;
 int memcpy (struct v4l2_audio*,int *,int) ;
 int msp3400_v4l2_audio ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *fh, struct v4l2_audio *a)
{
 dprintk(2, "VIDIOC_G_AUDIO: %d\n", a->index);
 if (a->index != 0)
  return -EINVAL;
 memcpy(a, &msp3400_v4l2_audio, sizeof(struct v4l2_audio));
 return 0;
}
