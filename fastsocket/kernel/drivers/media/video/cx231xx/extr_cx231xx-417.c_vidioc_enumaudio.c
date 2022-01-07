
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {scalar_t__ index; int capability; int name; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_AUDCAP_STEREO ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_enumaudio(struct file *file, void *fh,
     struct v4l2_audio *a)
{
  struct v4l2_audio *vin = a;

  int ret = -EINVAL;

  if (vin->index > 0)
   return ret;
  strncpy(vin->name, "VideoGrabber Audio", 14);
  vin->capability = V4L2_AUDCAP_STEREO;


return 0;
}
