
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct v4l2_pix_format {int pixelformat; int height; int width; } ;
struct v4l2_int_device {struct tcm825x_sensor* priv; } ;
struct v4l2_fract {int denominator; int numerator; } ;
struct tcm825x_sensor {TYPE_2__* i2c_client; TYPE_1__* platform_data; struct v4l2_fract timeperframe; struct v4l2_pix_format pix; } ;
typedef enum pixel_format { ____Placeholder_pixel_format } pixel_format ;
typedef enum image_size { ____Placeholder_image_size } image_size ;
struct TYPE_11__ {int val; int reg; } ;
struct TYPE_10__ {int val; int reg; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {int (* default_regs ) () ;} ;


 int HIGH_FPS_MODE_LOWER_LIMIT ;
 int RGB565 ;


 int YUV422 ;
 int dev_dbg (int *,char*,int) ;
 int stub1 () ;
 int tcm825x_find_size (struct v4l2_int_device*,int ,int ) ;
 TYPE_7__** tcm825x_fmt_reg ;
 int tcm825x_read_reg (TYPE_2__*,int) ;
 TYPE_5__** tcm825x_siz_reg ;
 int tcm825x_write_default_regs (TYPE_2__*,int ) ;
 int tcm825x_write_reg (TYPE_2__*,int,int) ;
 int tcm825x_write_reg_mask (TYPE_2__*,int ,int) ;

__attribute__((used)) static int tcm825x_configure(struct v4l2_int_device *s)
{
 struct tcm825x_sensor *sensor = s->priv;
 struct v4l2_pix_format *pix = &sensor->pix;
 enum image_size isize = tcm825x_find_size(s, pix->width, pix->height);
 struct v4l2_fract *fper = &sensor->timeperframe;
 enum pixel_format pfmt;
 int err;
 u32 tgt_fps;
 u8 val;


 err = tcm825x_write_default_regs(
  sensor->i2c_client, sensor->platform_data->default_regs());
 if (err)
  return err;


 val = tcm825x_siz_reg[isize]->val;
 dev_dbg(&sensor->i2c_client->dev,
  "configuring image size %d\n", isize);
 err = tcm825x_write_reg_mask(sensor->i2c_client,
         tcm825x_siz_reg[isize]->reg, val);
 if (err)
  return err;


 switch (pix->pixelformat) {
 default:
 case 129:
  pfmt = RGB565;
  break;
 case 128:
  pfmt = YUV422;
  break;
 }

 dev_dbg(&sensor->i2c_client->dev,
  "configuring pixel format %d\n", pfmt);
 val = tcm825x_fmt_reg[pfmt]->val;

 err = tcm825x_write_reg_mask(sensor->i2c_client,
         tcm825x_fmt_reg[pfmt]->reg, val);
 if (err)
  return err;





 tgt_fps = fper->denominator / fper->numerator;
 if (tgt_fps <= HIGH_FPS_MODE_LOWER_LIMIT) {
  val = tcm825x_read_reg(sensor->i2c_client, 0x02);
  val |= 0x80;
  tcm825x_write_reg(sensor->i2c_client, 0x02, val);
 }

 return 0;
}
