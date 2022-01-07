
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct gspca_dev {int usb_err; } ;


 int setcontrast (struct sd*) ;
 int stv06xx_write_bridge (struct sd*,int,int) ;

__attribute__((used)) static void st6422_set_contrast(struct gspca_dev *gspca_dev)
{
 int err;
 struct sd *sd = (struct sd *) gspca_dev;

 err = setcontrast(sd);


 if (err >= 0)
  err = stv06xx_write_bridge(sd, 0x143f, 0x01);

 gspca_dev->usb_err = err;
}
