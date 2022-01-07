
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {scalar_t__ pixelformat; } ;
struct sn9c102_device {int dummy; } ;


 scalar_t__ V4L2_PIX_FMT_SN9C10X ;
 scalar_t__ sn9c102_write_reg (struct sn9c102_device*,int,int) ;

__attribute__((used)) static int tas5110d_set_pix_format(struct sn9c102_device* cam,
         const struct v4l2_pix_format* pix)
{
 int err = 0;

 if (pix->pixelformat == V4L2_PIX_FMT_SN9C10X)
  err += sn9c102_write_reg(cam, 0x3b, 0x19);
 else
  err += sn9c102_write_reg(cam, 0xfb, 0x19);

 return err;
}
