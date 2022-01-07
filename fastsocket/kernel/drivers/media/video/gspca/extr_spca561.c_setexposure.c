
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int exposure; } ;
struct gspca_dev {int* usb_buf; } ;


 int ARRAY_SIZE (int*) ;
 int EXPOSURE_MAX ;
 int reg_w_buf (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i, expo = 0;
 int table[] = { 0, 450, 550, 625, EXPOSURE_MAX };

 for (i = 0; i < ARRAY_SIZE(table) - 1; i++) {
  if (sd->exposure <= table[i + 1]) {
   expo = sd->exposure - table[i];
   if (i)
    expo += 300;
   expo |= i << 11;
   break;
  }
 }

 gspca_dev->usb_buf[0] = expo;
 gspca_dev->usb_buf[1] = expo >> 8;
 reg_w_buf(gspca_dev, 0x8309, 2);
}
