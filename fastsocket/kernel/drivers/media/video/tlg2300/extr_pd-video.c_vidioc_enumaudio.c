
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {scalar_t__ index; scalar_t__ mode; int name; int capability; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_AUDCAP_STEREO ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_enumaudio(struct file *file, void *fh, struct v4l2_audio *a)
{
 if (0 != a->index)
  return -EINVAL;
 a->capability = V4L2_AUDCAP_STEREO;
 strcpy(a->name, "USB audio in");

 a->mode = 0;
 return 0;
}
