
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int crop; int v4l2_dev; } ;
struct v4l2_crop {int c; } ;
struct file {int dummy; } ;


 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vpfe_g_crop(struct file *file, void *priv,
        struct v4l2_crop *crop)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_g_crop\n");

 crop->c = vpfe_dev->crop;
 return 0;
}
