
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_pixel_format {int dummy; } ;
struct vpfe_device {int v4l2_dev; } ;
struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 struct vpfe_pixel_format* vpfe_check_format (struct vpfe_device*,int *) ;

__attribute__((used)) static int vpfe_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 const struct vpfe_pixel_format *pix_fmts;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_try_fmt_vid_cap\n");

 pix_fmts = vpfe_check_format(vpfe_dev, &f->fmt.pix);
 if (((void*)0) == pix_fmts)
  return -EINVAL;
 return 0;
}
