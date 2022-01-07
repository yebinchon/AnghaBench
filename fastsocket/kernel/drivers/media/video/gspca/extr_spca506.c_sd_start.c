
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; struct usb_device* dev; } ;
typedef int __u16 ;
struct TYPE_3__ {int priv; } ;


 int D_STREAM ;
 int PDEBUG (int ,char*) ;
 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_w (struct usb_device*,int,int,int) ;
 int spca506_GetNormeInput (struct gspca_dev*,int *,int *) ;
 int spca506_Initi2c (struct gspca_dev*) ;
 int spca506_SetNormeInput (struct gspca_dev*,int ,int ) ;
 int spca506_Setsize (struct gspca_dev*,int,int,int) ;
 int spca506_WriteI2c (struct gspca_dev*,int,int) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct usb_device *dev = gspca_dev->dev;
 __u16 norme;
 __u16 channel;


 reg_w(dev, 0x03, 0x00, 0x0004);
 reg_w(dev, 0x03, 0x00, 0x0003);
 reg_w(dev, 0x03, 0x00, 0x0004);
 reg_w(dev, 0x03, 0xFF, 0x0003);
 reg_w(dev, 0x02, 0x00, 0x0000);
 reg_w(dev, 0x03, 0x60, 0x0000);
 reg_w(dev, 0x03, 0x18, 0x0001);


 spca506_Initi2c(gspca_dev);
 spca506_WriteI2c(gspca_dev, 0x08, 0x01);

 spca506_WriteI2c(gspca_dev, 0x33, 0x03);

 spca506_WriteI2c(gspca_dev, 0x00, 0x04);

 spca506_WriteI2c(gspca_dev, 0x00, 0x05);

 spca506_WriteI2c(gspca_dev, 0x0d, 0x06);

 spca506_WriteI2c(gspca_dev, 0xf0, 0x07);


 spca506_WriteI2c(gspca_dev, 0x98, 0x08);

 spca506_WriteI2c(gspca_dev, 0x03, 0x09);
 spca506_WriteI2c(gspca_dev, 0x80, 0x0a);

 spca506_WriteI2c(gspca_dev, 0x47, 0x0b);
 spca506_WriteI2c(gspca_dev, 0x48, 0x0c);

 spca506_WriteI2c(gspca_dev, 0x00, 0x0d);

 spca506_WriteI2c(gspca_dev, 0x2a, 0x0f);


 spca506_WriteI2c(gspca_dev, 0x00, 0x10);

 spca506_WriteI2c(gspca_dev, 0x0c, 0x11);
 spca506_WriteI2c(gspca_dev, 0xb8, 0x12);
 spca506_WriteI2c(gspca_dev, 0x01, 0x13);
 spca506_WriteI2c(gspca_dev, 0x00, 0x14);
 spca506_WriteI2c(gspca_dev, 0x00, 0x15);
 spca506_WriteI2c(gspca_dev, 0x00, 0x16);
 spca506_WriteI2c(gspca_dev, 0x00, 0x17);
 spca506_WriteI2c(gspca_dev, 0x00, 0x18);
 spca506_WriteI2c(gspca_dev, 0x00, 0x19);
 spca506_WriteI2c(gspca_dev, 0x00, 0x1a);
 spca506_WriteI2c(gspca_dev, 0x00, 0x1b);
 spca506_WriteI2c(gspca_dev, 0x00, 0x1c);
 spca506_WriteI2c(gspca_dev, 0x00, 0x1d);
 spca506_WriteI2c(gspca_dev, 0x00, 0x1e);
 spca506_WriteI2c(gspca_dev, 0xa1, 0x1f);
 spca506_WriteI2c(gspca_dev, 0x02, 0x40);
 spca506_WriteI2c(gspca_dev, 0xff, 0x41);
 spca506_WriteI2c(gspca_dev, 0xff, 0x42);
 spca506_WriteI2c(gspca_dev, 0xff, 0x43);
 spca506_WriteI2c(gspca_dev, 0xff, 0x44);
 spca506_WriteI2c(gspca_dev, 0xff, 0x45);
 spca506_WriteI2c(gspca_dev, 0xff, 0x46);
 spca506_WriteI2c(gspca_dev, 0xff, 0x47);
 spca506_WriteI2c(gspca_dev, 0xff, 0x48);
 spca506_WriteI2c(gspca_dev, 0xff, 0x49);
 spca506_WriteI2c(gspca_dev, 0xff, 0x4a);
 spca506_WriteI2c(gspca_dev, 0xff, 0x4b);
 spca506_WriteI2c(gspca_dev, 0xff, 0x4c);
 spca506_WriteI2c(gspca_dev, 0xff, 0x4d);
 spca506_WriteI2c(gspca_dev, 0xff, 0x4e);
 spca506_WriteI2c(gspca_dev, 0xff, 0x4f);
 spca506_WriteI2c(gspca_dev, 0xff, 0x50);
 spca506_WriteI2c(gspca_dev, 0xff, 0x51);
 spca506_WriteI2c(gspca_dev, 0xff, 0x52);
 spca506_WriteI2c(gspca_dev, 0xff, 0x53);
 spca506_WriteI2c(gspca_dev, 0xff, 0x54);
 spca506_WriteI2c(gspca_dev, 0xff, 0x55);
 spca506_WriteI2c(gspca_dev, 0xff, 0x56);
 spca506_WriteI2c(gspca_dev, 0xff, 0x57);
 spca506_WriteI2c(gspca_dev, 0x00, 0x58);
 spca506_WriteI2c(gspca_dev, 0x54, 0x59);
 spca506_WriteI2c(gspca_dev, 0x07, 0x5a);
 spca506_WriteI2c(gspca_dev, 0x83, 0x5b);
 spca506_WriteI2c(gspca_dev, 0x00, 0x5c);
 spca506_WriteI2c(gspca_dev, 0x00, 0x5d);
 spca506_WriteI2c(gspca_dev, 0x00, 0x5e);
 spca506_WriteI2c(gspca_dev, 0x00, 0x5f);
 spca506_WriteI2c(gspca_dev, 0x00, 0x60);
 spca506_WriteI2c(gspca_dev, 0x05, 0x61);
 spca506_WriteI2c(gspca_dev, 0x9f, 0x62);

 reg_w(dev, 0x05, 0x00, 0x0003);
 reg_w(dev, 0x05, 0x00, 0x0004);
 reg_w(dev, 0x03, 0x10, 0x0001);
 reg_w(dev, 0x03, 0x78, 0x0000);
 switch (gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv) {
 case 0:
  spca506_Setsize(gspca_dev, 0, 0x10, 0x10);
  break;
 case 1:
  spca506_Setsize(gspca_dev, 1, 0x1a, 0x1a);
  break;
 case 2:
  spca506_Setsize(gspca_dev, 2, 0x1c, 0x1c);
  break;
 case 4:
  spca506_Setsize(gspca_dev, 4, 0x34, 0x34);
  break;
 default:

  spca506_Setsize(gspca_dev, 5, 0x40, 0x40);
  break;
 }



 reg_w(dev, 0x02, 0x01, 0x0000);
 reg_w(dev, 0x03, 0x12, 0x0000);
 reg_r(gspca_dev, 0x04, 0x0001, 2);
 PDEBUG(D_STREAM, "webcam started");
 spca506_GetNormeInput(gspca_dev, &norme, &channel);
 spca506_SetNormeInput(gspca_dev, norme, channel);
 return 0;
}
