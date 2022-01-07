
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int satur; } ;
struct gspca_dev {int usb_err; scalar_t__ streaming; } ;
typedef int __s32 ;


 int setsatur (struct gspca_dev*) ;

__attribute__((used)) static int sd_setsatur(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->satur = val;
 if (gspca_dev->streaming)
  setsatur(gspca_dev);
 return gspca_dev->usb_err;
}
