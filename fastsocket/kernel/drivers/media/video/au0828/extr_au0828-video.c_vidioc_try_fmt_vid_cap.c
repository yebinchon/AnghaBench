
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {int dummy; } ;


 int VIDIOC_TRY_FMT ;
 int au0828_set_format (struct au0828_dev*,int ,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;

 return au0828_set_format(dev, VIDIOC_TRY_FMT, f);
}
