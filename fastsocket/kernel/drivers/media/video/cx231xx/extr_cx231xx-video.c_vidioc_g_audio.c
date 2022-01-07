
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int capability; int index; int name; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int ctl_ainput; } ;




 int EINVAL ;
 int V4L2_AUDCAP_STEREO ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *priv, struct v4l2_audio *a)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;

 switch (a->index) {
 case 128:
  strcpy(a->name, "Television");
  break;
 case 129:
  strcpy(a->name, "Line In");
  break;
 default:
  return -EINVAL;
 }

 a->index = dev->ctl_ainput;
 a->capability = V4L2_AUDCAP_STEREO;

 return 0;
}
