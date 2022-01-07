
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {scalar_t__ top; scalar_t__ left; int height; int width; } ;
struct v4l2_crop {struct v4l2_rect c; } ;
struct tw9910_priv {TYPE_3__* scale; TYPE_2__* info; } ;
struct soc_camera_device {int dummy; } ;
struct TYPE_5__ {struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct TYPE_7__ {int height; int width; } ;
struct TYPE_6__ {scalar_t__ buswidth; int mpout; } ;


 int EINVAL ;
 int LEN ;
 int OPFORM ;
 int RTSEL_DET50 ;
 int RTSEL_FIELD ;
 int RTSEL_HLOCK ;
 int RTSEL_MASK ;
 int RTSEL_MONO ;
 int RTSEL_RTCO ;
 int RTSEL_SLOCK ;
 int RTSEL_VLOCK ;
 int RTSEL_VLOSS ;
 scalar_t__ SOCAM_DATAWIDTH_16 ;
 int VBICNTL ;
 struct tw9910_priv* to_tw9910 (struct i2c_client*) ;
 int tw9910_hsync_ctrl ;
 int tw9910_mask_set (struct i2c_client*,int ,int,int) ;
 int tw9910_reset (struct i2c_client*) ;
 TYPE_3__* tw9910_select_norm (struct soc_camera_device*,int ,int ) ;
 int tw9910_set_hsync (struct i2c_client*,int *) ;
 int tw9910_set_scale (struct i2c_client*,TYPE_3__*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tw9910_s_crop(struct v4l2_subdev *sd, struct v4l2_crop *a)
{
 struct v4l2_rect *rect = &a->c;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct tw9910_priv *priv = to_tw9910(client);
 struct soc_camera_device *icd = client->dev.platform_data;
 int ret = -EINVAL;
 u8 val;




 priv->scale = tw9910_select_norm(icd, rect->width, rect->height);
 if (!priv->scale)
  goto tw9910_set_fmt_error;




 tw9910_reset(client);




 val = 0x00;
 if (SOCAM_DATAWIDTH_16 == priv->info->buswidth)
  val = LEN;

 ret = tw9910_mask_set(client, OPFORM, LEN, val);
 if (ret < 0)
  goto tw9910_set_fmt_error;




 switch (priv->info->mpout) {
 case 128:
  val = RTSEL_VLOSS; break;
 case 133:
  val = RTSEL_HLOCK; break;
 case 130:
  val = RTSEL_SLOCK; break;
 case 129:
  val = RTSEL_VLOCK; break;
 case 132:
  val = RTSEL_MONO; break;
 case 135:
  val = RTSEL_DET50; break;
 case 134:
  val = RTSEL_FIELD; break;
 case 131:
  val = RTSEL_RTCO; break;
 default:
  val = 0;
 }

 ret = tw9910_mask_set(client, VBICNTL, RTSEL_MASK, val);
 if (ret < 0)
  goto tw9910_set_fmt_error;




 ret = tw9910_set_scale(client, priv->scale);
 if (ret < 0)
  goto tw9910_set_fmt_error;




 ret = tw9910_set_hsync(client, &tw9910_hsync_ctrl);
 if (ret < 0)
  goto tw9910_set_fmt_error;

 rect->width = priv->scale->width;
 rect->height = priv->scale->height;
 rect->left = 0;
 rect->top = 0;

 return ret;

tw9910_set_fmt_error:

 tw9910_reset(client);
 priv->scale = ((void*)0);

 return ret;
}
