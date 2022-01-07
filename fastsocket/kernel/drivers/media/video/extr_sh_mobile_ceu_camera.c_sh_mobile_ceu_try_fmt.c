
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_pix_format {int pixelformat; int width; int height; int bytesperline; int sizeimage; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct soc_camera_format_xlate {TYPE_3__* cam_fmt; TYPE_2__* host_fmt; } ;
struct TYPE_8__ {int parent; } ;
struct soc_camera_device {TYPE_4__ dev; } ;
typedef int __u32 ;
struct TYPE_7__ {int fourcc; } ;
struct TYPE_6__ {int depth; } ;


 int DIV_ROUND_UP (int ,int) ;
 int EINVAL ;




 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 struct soc_camera_format_xlate* soc_camera_xlate_by_fourcc (struct soc_camera_device*,int) ;
 int try_fmt ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_format*) ;
 int v4l_bound_align_image (int*,int,int,int,int*,int,int,int,int ) ;
 int video ;

__attribute__((used)) static int sh_mobile_ceu_try_fmt(struct soc_camera_device *icd,
     struct v4l2_format *f)
{
 const struct soc_camera_format_xlate *xlate;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 __u32 pixfmt = pix->pixelformat;
 int width, height;
 int ret;

 xlate = soc_camera_xlate_by_fourcc(icd, pixfmt);
 if (!xlate) {
  dev_warn(icd->dev.parent, "Format %x not found\n", pixfmt);
  return -EINVAL;
 }



 v4l_bound_align_image(&pix->width, 2, 2560, 1,
         &pix->height, 4, 1920, 2, 0);

 width = pix->width;
 height = pix->height;

 pix->bytesperline = pix->width *
  DIV_ROUND_UP(xlate->host_fmt->depth, 8);
 pix->sizeimage = pix->height * pix->bytesperline;

 pix->pixelformat = xlate->cam_fmt->fourcc;


 ret = v4l2_subdev_call(sd, video, try_fmt, f);
 pix->pixelformat = pixfmt;
 if (ret < 0)
  return ret;

 switch (pixfmt) {
 case 131:
 case 129:
 case 130:
 case 128:


  if (pix->width < width || pix->height < height) {
   int tmp_w = pix->width, tmp_h = pix->height;
   pix->width = 2560;
   pix->height = 1920;
   ret = v4l2_subdev_call(sd, video, try_fmt, f);
   if (ret < 0) {

    dev_err(icd->dev.parent,
     "FIXME: try_fmt() returned %d\n", ret);
    pix->width = tmp_w;
    pix->height = tmp_h;
   }
  }
  if (pix->width > width)
   pix->width = width;
  if (pix->height > height)
   pix->height = height;
 }

 return ret;
}
