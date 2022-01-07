
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int vflip; } ;
struct gspca_dev {int usb_err; scalar_t__ streaming; } ;
typedef int __s32 ;


 int sethvflip (struct gspca_dev*) ;

__attribute__((used)) static int sd_setvflip(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->vflip = val;
 if (gspca_dev->streaming)
  sethvflip(gspca_dev);
 return gspca_dev->usb_err;
}
