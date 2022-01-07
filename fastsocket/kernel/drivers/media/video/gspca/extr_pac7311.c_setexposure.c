
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd {int exposure; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef int __u8 ;
struct TYPE_3__ {scalar_t__ priv; } ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u8 reg;




 reg = 120 * sd->exposure / 1000;
 if (reg < 2)
  reg = 2;
 else if (reg > 63)
  reg = 63;

 reg_w(gspca_dev, 0xff, 0x04);
 reg_w(gspca_dev, 0x02, reg);



 reg_w(gspca_dev, 0xff, 0x01);
 if (gspca_dev->cam.cam_mode[(int)gspca_dev->curr_mode].priv &&
   reg <= 3) {
  reg_w(gspca_dev, 0x08, 0x09);
 } else {
  reg_w(gspca_dev, 0x08, 0x08);
 }


 reg_w(gspca_dev, 0x11, 0x01);
}
