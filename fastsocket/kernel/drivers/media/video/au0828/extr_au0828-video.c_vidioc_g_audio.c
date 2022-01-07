
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {unsigned int index; int capability; int name; } ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {unsigned int ctrl_ainput; } ;


 int EINVAL ;
 int V4L2_AUDCAP_STEREO ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *priv, struct v4l2_audio *a)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;
 unsigned int index = a->index;

 if (a->index > 1)
  return -EINVAL;

 index = dev->ctrl_ainput;
 if (index == 0)
  strcpy(a->name, "Television");
 else
  strcpy(a->name, "Line in");

 a->capability = V4L2_AUDCAP_STEREO;
 a->index = index;
 return 0;
}
