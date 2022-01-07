
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct gspca_dev {int dummy; } ;
struct file {int dummy; } ;


 int try_fmt_vid_cap (struct gspca_dev*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap(struct file *file,
         void *priv,
         struct v4l2_format *fmt)
{
 struct gspca_dev *gspca_dev = priv;
 int ret;

 ret = try_fmt_vid_cap(gspca_dev, fmt);
 if (ret < 0)
  return ret;
 return 0;
}
