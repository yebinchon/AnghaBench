
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_pix_format {scalar_t__ pixelformat; int height; int bytesperline; int sizeimage; int field; int colorspace; int width; } ;
struct v4l2_mbus_framefmt {int height; int field; int colorspace; int width; int code; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct soc_camera_format_xlate {int code; int host_fmt; } ;
struct TYPE_4__ {int parent; } ;
struct soc_camera_device {TYPE_2__ dev; } ;
typedef scalar_t__ __u32 ;


 int EINVAL ;


 scalar_t__ V4L2_PIX_FMT_YUV422P ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,scalar_t__) ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 struct soc_camera_format_xlate* soc_camera_xlate_by_fourcc (struct soc_camera_device*,scalar_t__) ;
 int soc_mbus_bytes_per_line (int ,int ) ;
 int try_mbus_fmt ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_mbus_framefmt*) ;
 int v4l_bound_align_image (int *,int,int,int,int*,int,int,int ,int) ;
 int video ;

__attribute__((used)) static int pxa_camera_try_fmt(struct soc_camera_device *icd,
         struct v4l2_format *f)
{
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 const struct soc_camera_format_xlate *xlate;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct v4l2_mbus_framefmt mf;
 __u32 pixfmt = pix->pixelformat;
 int ret;

 xlate = soc_camera_xlate_by_fourcc(icd, pixfmt);
 if (!xlate) {
  dev_warn(icd->dev.parent, "Format %x not found\n", pixfmt);
  return -EINVAL;
 }







 v4l_bound_align_image(&pix->width, 48, 2048, 1,
         &pix->height, 32, 2048, 0,
         pixfmt == V4L2_PIX_FMT_YUV422P ? 4 : 0);

 pix->bytesperline = soc_mbus_bytes_per_line(pix->width,
          xlate->host_fmt);
 if (pix->bytesperline < 0)
  return pix->bytesperline;
 pix->sizeimage = pix->height * pix->bytesperline;


 mf.width = pix->width;
 mf.height = pix->height;
 mf.field = pix->field;
 mf.colorspace = pix->colorspace;
 mf.code = xlate->code;

 ret = v4l2_subdev_call(sd, video, try_mbus_fmt, &mf);
 if (ret < 0)
  return ret;

 pix->width = mf.width;
 pix->height = mf.height;
 pix->colorspace = mf.colorspace;

 switch (mf.field) {
 case 129:
 case 128:
  pix->field = 128;
  break;
 default:

  dev_err(icd->dev.parent, "Field type %d unsupported.\n",
   mf.field);
  return -EINVAL;
 }

 return ret;
}
