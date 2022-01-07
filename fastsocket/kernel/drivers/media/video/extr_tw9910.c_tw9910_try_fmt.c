
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; int colorspace; int code; int field; } ;
struct tw9910_scale_ctrl {int height; int width; } ;
struct soc_camera_device {int dummy; } ;
struct TYPE_2__ {struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int EINVAL ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_ANY ;
 int V4L2_FIELD_INTERLACED_BT ;
 int V4L2_MBUS_FMT_UYVY8_2X8 ;
 int dev_err (TYPE_1__*,char*,int ) ;
 struct tw9910_scale_ctrl* tw9910_select_norm (struct soc_camera_device*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tw9910_try_fmt(struct v4l2_subdev *sd,
     struct v4l2_mbus_framefmt *mf)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct soc_camera_device *icd = client->dev.platform_data;
 const struct tw9910_scale_ctrl *scale;

 if (V4L2_FIELD_ANY == mf->field) {
  mf->field = V4L2_FIELD_INTERLACED_BT;
 } else if (V4L2_FIELD_INTERLACED_BT != mf->field) {
  dev_err(&client->dev, "Field type %d invalid.\n", mf->field);
  return -EINVAL;
 }

 mf->code = V4L2_MBUS_FMT_UYVY8_2X8;
 mf->colorspace = V4L2_COLORSPACE_JPEG;




 scale = tw9910_select_norm(icd, mf->width, mf->height);
 if (!scale)
  return -EINVAL;

 mf->width = scale->width;
 mf->height = scale->height;

 return 0;
}
