
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {int* usb_buf; struct usb_device* dev; scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef int __u8 ;
struct TYPE_3__ {int priv; } ;


 int memcpy (int*,int const*,int) ;
 int reg_w_buf (struct gspca_dev*,int,int) ;
 int reg_w_val (struct usb_device*,int,int) ;
 int setexposure (struct gspca_dev*) ;
 int setgain (struct gspca_dev*) ;
 int setwhite (struct gspca_dev*) ;

__attribute__((used)) static int sd_start_12a(struct gspca_dev *gspca_dev)
{
 struct usb_device *dev = gspca_dev->dev;
 int mode;
 static const __u8 Reg8391[8] =
  {0x92, 0x30, 0x20, 0x00, 0x0c, 0x00, 0x00, 0x00};

 mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;
 if (mode <= 1) {

  reg_w_val(dev, 0x8500, 0x10 | mode);
 } else {



  reg_w_val(dev, 0x8500, mode);
 }

 gspca_dev->usb_buf[0] = 0xaa;
 gspca_dev->usb_buf[1] = 0x00;
 reg_w_buf(gspca_dev, 0x8307, 2);

 reg_w_val(gspca_dev->dev, 0x8700, 0x8a);

 reg_w_val(gspca_dev->dev, 0x8112, 0x1e | 0x20);
 reg_w_val(gspca_dev->dev, 0x850b, 0x03);
 memcpy(gspca_dev->usb_buf, Reg8391, 8);
 reg_w_buf(gspca_dev, 0x8391, 8);
 reg_w_buf(gspca_dev, 0x8390, 8);
 setwhite(gspca_dev);
 setgain(gspca_dev);
 setexposure(gspca_dev);


 reg_w_val(gspca_dev->dev, 0x8114, 0x00);
 return 0;
}
