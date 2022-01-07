
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {scalar_t__ index; } ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {scalar_t__ ctrl_ainput; } ;


 int EINVAL ;

__attribute__((used)) static int vidioc_s_audio(struct file *file, void *priv, struct v4l2_audio *a)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;
 if (a->index != dev->ctrl_ainput)
  return -EINVAL;
 return 0;
}
