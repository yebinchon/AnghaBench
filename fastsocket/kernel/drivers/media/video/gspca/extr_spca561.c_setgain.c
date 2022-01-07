
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int gain; } ;
struct gspca_dev {int* usb_buf; } ;


 int reg_w_buf (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;




 if (sd->gain < 64)
  gspca_dev->usb_buf[0] = sd->gain;
 else if (sd->gain < 128)
  gspca_dev->usb_buf[0] = (sd->gain / 2) | 0x40;
 else
  gspca_dev->usb_buf[0] = (sd->gain / 4) | 0xc0;

 gspca_dev->usb_buf[1] = 0;
 reg_w_buf(gspca_dev, 0x8335, 2);
}
