
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int exposure; } ;
struct gspca_dev {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u8 clockdiv;
 __u16 exposure;




 clockdiv = (90 * sd->exposure + 1999) / 2000;





 if (clockdiv < 6)
  clockdiv = 6;
 else if (clockdiv > 63)
  clockdiv = 63;




 if (clockdiv < 6 || clockdiv > 12)
  clockdiv = ((clockdiv + 2) / 3) * 3;



 exposure = (sd->exposure * 45 * 448) / (1000 * clockdiv);

 exposure = 448 - exposure;

 reg_w(gspca_dev, 0xff, 0x03);
 reg_w(gspca_dev, 0x02, clockdiv);
 reg_w(gspca_dev, 0x0e, exposure & 0xff);
 reg_w(gspca_dev, 0x0f, exposure >> 8);


 reg_w(gspca_dev, 0x11, 0x01);
}
