
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {int pixelformat; } ;
struct sn9c102_device {int dummy; } ;





 int V4L2_PIX_FMT_SBGGR8 ;
 int sn9c102_get_bridge (struct sn9c102_device*) ;
 int sn9c102_i2c_write (struct sn9c102_device*,int,int) ;
 int sn9c102_write_reg (struct sn9c102_device*,int,int) ;

__attribute__((used)) static int hv7131r_set_pix_format(struct sn9c102_device* cam,
      const struct v4l2_pix_format* pix)
{
 int err = 0;

 switch (sn9c102_get_bridge(cam)) {
 case 130:
  if (pix->pixelformat == V4L2_PIX_FMT_SBGGR8) {
   err += sn9c102_write_reg(cam, 0xa0, 0x19);
   err += sn9c102_i2c_write(cam, 0x01, 0x04);
  } else {
   err += sn9c102_write_reg(cam, 0x30, 0x19);
   err += sn9c102_i2c_write(cam, 0x01, 0x04);
  }
  break;
 case 129:
 case 128:
  if (pix->pixelformat == V4L2_PIX_FMT_SBGGR8) {
   err += sn9c102_write_reg(cam, 0xa5, 0x17);
   err += sn9c102_i2c_write(cam, 0x01, 0x24);
  } else {
   err += sn9c102_write_reg(cam, 0xa3, 0x17);
   err += sn9c102_i2c_write(cam, 0x01, 0x04);
  }
  break;
 default:
  break;
 }

 return err;
}
