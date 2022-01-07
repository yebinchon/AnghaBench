
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {int swap_yuv_y_chromas; int swap_yuv_cb_cr; } ;
struct i2c_client {int dev; } ;
typedef enum v4l2_mbus_pixelcode { ____Placeholder_v4l2_mbus_pixelcode } v4l2_mbus_pixelcode ;


 int EINVAL ;
 int dev_err (int *,char*,int) ;
 int mt9m111_setfmt_bayer10 (struct i2c_client*) ;
 int mt9m111_setfmt_bayer8 (struct i2c_client*) ;
 int mt9m111_setfmt_rgb555 (struct i2c_client*) ;
 int mt9m111_setfmt_rgb565 (struct i2c_client*) ;
 int mt9m111_setfmt_yuv (struct i2c_client*) ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;

__attribute__((used)) static int mt9m111_set_pixfmt(struct i2c_client *client,
         enum v4l2_mbus_pixelcode code)
{
 struct mt9m111 *mt9m111 = to_mt9m111(client);
 int ret;

 switch (code) {
 case 132:
  ret = mt9m111_setfmt_bayer8(client);
  break;
 case 133:
  ret = mt9m111_setfmt_bayer10(client);
  break;
 case 135:
  ret = mt9m111_setfmt_rgb555(client);
  break;
 case 134:
  ret = mt9m111_setfmt_rgb565(client);
  break;
 case 131:
  mt9m111->swap_yuv_y_chromas = 0;
  mt9m111->swap_yuv_cb_cr = 0;
  ret = mt9m111_setfmt_yuv(client);
  break;
 case 130:
  mt9m111->swap_yuv_y_chromas = 0;
  mt9m111->swap_yuv_cb_cr = 1;
  ret = mt9m111_setfmt_yuv(client);
  break;
 case 129:
  mt9m111->swap_yuv_y_chromas = 1;
  mt9m111->swap_yuv_cb_cr = 0;
  ret = mt9m111_setfmt_yuv(client);
  break;
 case 128:
  mt9m111->swap_yuv_y_chromas = 1;
  mt9m111->swap_yuv_cb_cr = 1;
  ret = mt9m111_setfmt_yuv(client);
  break;
 default:
  dev_err(&client->dev, "Pixel format not handled : %x\n",
   code);
  ret = -EINVAL;
 }

 return ret;
}
