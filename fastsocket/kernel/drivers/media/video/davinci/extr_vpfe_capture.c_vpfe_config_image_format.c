
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct vpfe_subdev_info {int grp_id; } ;
struct TYPE_13__ {int height; int bytesperline; int sizeimage; int pixelformat; int field; int width; } ;
struct TYPE_14__ {TYPE_4__ pix; } ;
struct TYPE_16__ {TYPE_5__ fmt; } ;
struct TYPE_11__ {int active_lines; int frame_format; int active_pixels; } ;
struct TYPE_10__ {int height; int width; scalar_t__ left; scalar_t__ top; } ;
struct vpfe_device {int std_index; TYPE_7__ fmt; int v4l2_dev; TYPE_2__ std_info; TYPE_1__ crop; struct vpfe_subdev_info* current_subdev; } ;
struct TYPE_12__ {int (* get_line_length ) () ;} ;
struct TYPE_17__ {TYPE_3__ hw_ops; } ;
struct TYPE_15__ {int const std_id; int height; int frame_format; int width; } ;


 int ARRAY_SIZE (TYPE_6__*) ;
 int EINVAL ;
 int ENOIOCTLCMD ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_SBGGR8 ;
 int V4L2_PIX_FMT_UYVY ;
 TYPE_8__* ccdc_dev ;
 int g_fmt ;
 int stub1 () ;
 int v4l2_device_call_until_err (int *,int ,int ,int ,TYPE_7__*) ;
 int v4l2_err (int *,char*) ;
 int video ;
 int vpfe_config_ccdc_image_format (struct vpfe_device*) ;
 TYPE_6__* vpfe_standards ;

__attribute__((used)) static int vpfe_config_image_format(struct vpfe_device *vpfe_dev,
        const v4l2_std_id *std_id)
{
 struct vpfe_subdev_info *sdinfo = vpfe_dev->current_subdev;
 int i, ret = 0;

 for (i = 0; i < ARRAY_SIZE(vpfe_standards); i++) {
  if (vpfe_standards[i].std_id & *std_id) {
   vpfe_dev->std_info.active_pixels =
     vpfe_standards[i].width;
   vpfe_dev->std_info.active_lines =
     vpfe_standards[i].height;
   vpfe_dev->std_info.frame_format =
     vpfe_standards[i].frame_format;
   vpfe_dev->std_index = i;
   break;
  }
 }

 if (i == ARRAY_SIZE(vpfe_standards)) {
  v4l2_err(&vpfe_dev->v4l2_dev, "standard not supported\n");
  return -EINVAL;
 }

 vpfe_dev->crop.top = 0;
 vpfe_dev->crop.left = 0;
 vpfe_dev->crop.width = vpfe_dev->std_info.active_pixels;
 vpfe_dev->crop.height = vpfe_dev->std_info.active_lines;
 vpfe_dev->fmt.fmt.pix.width = vpfe_dev->crop.width;
 vpfe_dev->fmt.fmt.pix.height = vpfe_dev->crop.height;


 if (vpfe_dev->std_info.frame_format) {
  vpfe_dev->fmt.fmt.pix.field = V4L2_FIELD_INTERLACED;

  vpfe_dev->fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_UYVY;
 } else {
  vpfe_dev->fmt.fmt.pix.field = V4L2_FIELD_NONE;

  vpfe_dev->fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_SBGGR8;
 }


 ret = v4l2_device_call_until_err(&vpfe_dev->v4l2_dev,
   sdinfo->grp_id, video, g_fmt, &vpfe_dev->fmt);

 if (ret && ret != -ENOIOCTLCMD) {
  v4l2_err(&vpfe_dev->v4l2_dev,
   "error in getting g_fmt from sub device\n");
  return ret;
 }


 ret = vpfe_config_ccdc_image_format(vpfe_dev);
 if (ret)
  return ret;


 if (!ret) {
  vpfe_dev->fmt.fmt.pix.bytesperline =
   ccdc_dev->hw_ops.get_line_length();
  vpfe_dev->fmt.fmt.pix.sizeimage =
   vpfe_dev->fmt.fmt.pix.bytesperline *
   vpfe_dev->fmt.fmt.pix.height;
 }
 return ret;
}
