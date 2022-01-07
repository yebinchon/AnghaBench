
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; int height; int width; TYPE_2__ cam; } ;
struct sd {int sensor; int clockdiv; struct gspca_dev gspca_dev; } ;
struct TYPE_3__ {int priv; } ;


 int OV7610_REG_COM_C ;
 int OV7670_COM7_FMT_MASK ;
 int OV7670_COM7_FMT_QVGA ;
 int OV7670_COM7_FMT_VGA ;
 int OV7670_COM8_AWB ;
 int OV7670_R03_VREF ;
 int OV7670_R12_COM7 ;
 int OV7670_R13_COM8 ;
 int OV7670_R17_HSTART ;
 int OV7670_R18_HSTOP ;
 int OV7670_R19_VSTART ;
 int OV7670_R1A_VSTOP ;
 int OV7670_R32_HREF ;
 int i2c_r (struct sd*,int) ;
 int i2c_w (struct sd*,int,int) ;
 int i2c_w_mask (struct sd*,int,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void mode_init_ov_sensor_regs(struct sd *sd)
{
 struct gspca_dev *gspca_dev;
 int qvga, xstart, xend, ystart, yend;
 u8 v;

 gspca_dev = &sd->gspca_dev;
 qvga = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv & 1;


 switch (sd->sensor) {
 case 140:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x28, qvga ? 0x00 : 0x20, 0x20);
  i2c_w(sd, 0x24, qvga ? 0x20 : 0x3a);
  i2c_w(sd, 0x25, qvga ? 0x30 : 0x60);
  i2c_w_mask(sd, 0x2d, qvga ? 0x40 : 0x00, 0x40);
  i2c_w_mask(sd, 0x67, qvga ? 0xf0 : 0x90, 0xf0);
  i2c_w_mask(sd, 0x74, qvga ? 0x20 : 0x00, 0x20);
  return;
 case 139:
  if (qvga) {
   xstart = (1040 - gspca_dev->width) / 2 + (0x1f << 4);
   ystart = (776 - gspca_dev->height) / 2;
  } else {
   xstart = (2076 - gspca_dev->width) / 2 + (0x10 << 4);
   ystart = (1544 - gspca_dev->height) / 2;
  }
  xend = xstart + gspca_dev->width;
  yend = ystart + gspca_dev->height;


  i2c_w_mask(sd, 0x12, qvga ? 0x40 : 0x00, 0xf0);
  i2c_w_mask(sd, 0x32,
      (((xend >> 1) & 7) << 3) | ((xstart >> 1) & 7),
      0x3f);
  i2c_w_mask(sd, 0x03,
      (((yend >> 1) & 3) << 2) | ((ystart >> 1) & 3),
      0x0f);
  i2c_w(sd, 0x17, xstart >> 4);
  i2c_w(sd, 0x18, xend >> 4);
  i2c_w(sd, 0x19, ystart >> 3);
  i2c_w(sd, 0x1a, yend >> 3);
  return;
 case 128:

  i2c_w_mask(sd, OV7610_REG_COM_C, qvga ? (1 << 5) : 0, 1 << 5);
  i2c_w_mask(sd, 0x13, 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x06);
  i2c_w_mask(sd, 0x2d, 0x00, 0x40);
  i2c_w_mask(sd, 0x28, 0x20, 0x20);
  break;
 case 135:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w(sd, 0x35, qvga ? 0x1e : 0x9e);
  i2c_w_mask(sd, 0x13, 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x06);
  break;
 case 134:
 case 133:
 case 129:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x28, qvga ? 0x00 : 0x20, 0x20);
  i2c_w(sd, 0x24, qvga ? 0x20 : 0x3a);
  i2c_w(sd, 0x25, qvga ? 0x30 : 0x60);
  i2c_w_mask(sd, 0x2d, qvga ? 0x40 : 0x00, 0x40);
  i2c_w_mask(sd, 0x67, qvga ? 0xb0 : 0x90, 0xf0);
  i2c_w_mask(sd, 0x74, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x13, 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x06);
  if (sd->sensor == 129)
   i2c_w(sd, 0x35, qvga ? 0x1e : 0x9e);
  break;
 case 132:
 case 131:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x28, qvga ? 0x00 : 0x20, 0x20);


  i2c_w_mask(sd, 0x2d, qvga ? 0x40 : 0x00, 0x40);

  i2c_w_mask(sd, 0x67, qvga ? 0xf0 : 0x90, 0xf0);

  i2c_w_mask(sd, 0x74, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x04);
  break;
 case 130:



  i2c_w_mask(sd, OV7670_R12_COM7,
    qvga ? OV7670_COM7_FMT_QVGA : OV7670_COM7_FMT_VGA,
    OV7670_COM7_FMT_MASK);
  i2c_w_mask(sd, 0x13, 0x00, 0x20);
  i2c_w_mask(sd, OV7670_R13_COM8, OV7670_COM8_AWB,
    OV7670_COM8_AWB);
  if (qvga) {

   xstart = 164;
   xend = 28;
   ystart = 14;
   yend = 494;
  } else {
   xstart = 158;
   xend = 14;
   ystart = 10;
   yend = 490;
  }


  i2c_w(sd, OV7670_R17_HSTART, xstart >> 3);
  i2c_w(sd, OV7670_R18_HSTOP, xend >> 3);
  v = i2c_r(sd, OV7670_R32_HREF);
  v = (v & 0xc0) | ((xend & 0x7) << 3) | (xstart & 0x07);
  msleep(10);

  i2c_w(sd, OV7670_R32_HREF, v);

  i2c_w(sd, OV7670_R19_VSTART, ystart >> 2);
  i2c_w(sd, OV7670_R1A_VSTOP, yend >> 2);
  v = i2c_r(sd, OV7670_R03_VREF);
  v = (v & 0xc0) | ((yend & 0x3) << 2) | (ystart & 0x03);
  msleep(10);

  i2c_w(sd, OV7670_R03_VREF, v);
  break;
 case 138:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x13, 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x06);
  break;
 case 137:
 case 136:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x06);
  break;
 default:
  return;
 }


 i2c_w(sd, 0x11, sd->clockdiv);
}
