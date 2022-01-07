
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int index; int capability; int name; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_AUDCAP_STEREO ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *priv,
      struct v4l2_audio *a)
{
 if (a->index > 1)
  return -EINVAL;

 strcpy(a->name, "Radio");
 a->capability = V4L2_AUDCAP_STEREO;
 return 0;
}
