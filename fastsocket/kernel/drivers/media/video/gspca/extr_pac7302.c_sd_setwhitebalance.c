
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int white_balance; } ;
struct gspca_dev {int usb_err; scalar_t__ streaming; } ;
typedef int __s32 ;


 int setwhitebalance (struct gspca_dev*) ;

__attribute__((used)) static int sd_setwhitebalance(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->white_balance = val;
 if (gspca_dev->streaming)
  setwhitebalance(gspca_dev);
 return gspca_dev->usb_err;
}
