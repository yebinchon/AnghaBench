
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_pix_format {int pixelformat; } ;
struct TYPE_4__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct soc_camera_format_xlate {int host_fmt; int buswidth; } ;
struct TYPE_3__ {int parent; } ;
struct soc_camera_device {int current_fmt; int buswidth; TYPE_1__ dev; } ;


 int EINVAL ;
 int dev_warn (int ,char*,int ) ;
 int s_fmt ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 struct soc_camera_format_xlate* soc_camera_xlate_by_fourcc (struct soc_camera_device*,int ) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_format*) ;
 int video ;

__attribute__((used)) static int mx1_camera_set_fmt(struct soc_camera_device *icd,
         struct v4l2_format *f)
{
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 const struct soc_camera_format_xlate *xlate;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 int ret;

 xlate = soc_camera_xlate_by_fourcc(icd, pix->pixelformat);
 if (!xlate) {
  dev_warn(icd->dev.parent, "Format %x not found\n",
    pix->pixelformat);
  return -EINVAL;
 }

 ret = v4l2_subdev_call(sd, video, s_fmt, f);
 if (!ret) {
  icd->buswidth = xlate->buswidth;
  icd->current_fmt = xlate->host_fmt;
 }

 return ret;
}
