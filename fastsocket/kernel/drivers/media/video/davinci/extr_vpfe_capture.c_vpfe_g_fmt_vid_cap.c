
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct vpfe_device {struct v4l2_format fmt; int v4l2_dev; } ;
struct file {int dummy; } ;


 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vpfe_g_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *fmt)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 int ret = 0;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_g_fmt_vid_cap\n");

 *fmt = vpfe_dev->fmt;
 return ret;
}
