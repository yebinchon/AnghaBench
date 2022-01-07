
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

__attribute__((used)) static int ov7630_set_pix_format(struct sn9c102_device* cam,
     const struct v4l2_pix_format* pix)
{
 int err = 0;

 switch (sn9c102_get_bridge(cam)) {
 case 132:
 case 131:
 case 130:
  if (pix->pixelformat == V4L2_PIX_FMT_SBGGR8)
   err += sn9c102_write_reg(cam, 0x50, 0x19);
  else
   err += sn9c102_write_reg(cam, 0x20, 0x19);
  break;
 case 129:
 case 128:
  if (pix->pixelformat == V4L2_PIX_FMT_SBGGR8) {
   err += sn9c102_write_reg(cam, 0xe5, 0x17);
   err += sn9c102_i2c_write(cam, 0x11, 0x04);
  } else {
   err += sn9c102_write_reg(cam, 0xe2, 0x17);
   err += sn9c102_i2c_write(cam, 0x11, 0x02);
  }
  break;
 default:
  break;
 }

 return err;
}
