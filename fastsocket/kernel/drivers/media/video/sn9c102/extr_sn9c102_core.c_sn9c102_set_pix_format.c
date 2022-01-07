
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {scalar_t__ pixelformat; } ;
struct sn9c102_device {int bridge; int* reg; } ;







 int EIO ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 scalar_t__ V4L2_PIX_FMT_SN9C10X ;
 int sn9c102_write_reg (struct sn9c102_device*,int,int) ;

__attribute__((used)) static int
sn9c102_set_pix_format(struct sn9c102_device* cam, struct v4l2_pix_format* pix)
{
 int err = 0;

 if (pix->pixelformat == V4L2_PIX_FMT_SN9C10X ||
     pix->pixelformat == V4L2_PIX_FMT_JPEG) {
  switch (cam->bridge) {
  case 132:
  case 131:
  case 130:
   err += sn9c102_write_reg(cam, cam->reg[0x18] | 0x80,
       0x18);
   break;
  case 129:
  case 128:
   err += sn9c102_write_reg(cam, cam->reg[0x18] & 0x7f,
       0x18);
   break;
  }
 } else {
  switch (cam->bridge) {
  case 132:
  case 131:
  case 130:
   err += sn9c102_write_reg(cam, cam->reg[0x18] & 0x7f,
       0x18);
   break;
  case 129:
  case 128:
   err += sn9c102_write_reg(cam, cam->reg[0x18] | 0x80,
       0x18);
   break;
  }
 }

 return err ? -EIO : 0;
}
