
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_pix_format {int height; int width; int bytesperline; int sizeimage; int field; scalar_t__ pixelformat; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct soc_camera_format_xlate {TYPE_3__* host_fmt; TYPE_2__* cam_fmt; } ;
struct TYPE_8__ {int parent; } ;
struct soc_camera_device {TYPE_4__ dev; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
typedef scalar_t__ __u32 ;
struct TYPE_7__ {scalar_t__ fourcc; int depth; } ;
struct TYPE_6__ {scalar_t__ fourcc; } ;


 int DIV_ROUND_UP (int ,int) ;
 int EINVAL ;
 int V4L2_FIELD_ANY ;
 int V4L2_FIELD_NONE ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,scalar_t__) ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 struct soc_camera_format_xlate* soc_camera_xlate_by_fourcc (struct soc_camera_device*,scalar_t__) ;
 int try_fmt ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_format*) ;
 int video ;

__attribute__((used)) static int mx3_camera_try_fmt(struct soc_camera_device *icd,
         struct v4l2_format *f)
{
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 const struct soc_camera_format_xlate *xlate;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 __u32 pixfmt = pix->pixelformat;
 enum v4l2_field field;
 int ret;

 xlate = soc_camera_xlate_by_fourcc(icd, pixfmt);
 if (pixfmt && !xlate) {
  dev_warn(icd->dev.parent, "Format %x not found\n", pixfmt);
  return -EINVAL;
 }


 if (pix->height > 4096)
  pix->height = 4096;
 if (pix->width > 4096)
  pix->width = 4096;

 pix->bytesperline = pix->width *
  DIV_ROUND_UP(xlate->host_fmt->depth, 8);
 pix->sizeimage = pix->height * pix->bytesperline;


 pix->pixelformat = xlate->cam_fmt->fourcc;

 ret = v4l2_subdev_call(sd, video, try_fmt, f);
 pix->pixelformat = xlate->host_fmt->fourcc;

 field = pix->field;

 if (field == V4L2_FIELD_ANY) {
  pix->field = V4L2_FIELD_NONE;
 } else if (field != V4L2_FIELD_NONE) {
  dev_err(icd->dev.parent, "Field type %d unsupported.\n", field);
  return -EINVAL;
 }

 return ret;
}
