
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef int __u8 ;
struct TYPE_3__ {int priv; } ;


 int * cxsensor ;
 int const* reg10 ;
 int const* reg20 ;
 int const* reg28 ;
 int const* reg71a ;
 int const* reg71b ;
 int const* reg71c ;
 int const* reg71d ;
 int const* reg7b ;
 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w (struct gspca_dev*,int,int const*,int) ;
 int reg_w_val (struct gspca_dev*,int,int) ;

__attribute__((used)) static void cx_sensor(struct gspca_dev*gspca_dev)
{
 int i = 0;
 int length;
 const __u8 *ptsensor = cxsensor;

 reg_w(gspca_dev, 0x0020, reg20, 8);
 reg_w(gspca_dev, 0x0028, reg28, 8);
 reg_w(gspca_dev, 0x0010, reg10, 8);
 reg_w_val(gspca_dev, 0x0092, 0x03);

 switch (gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv) {
 case 0:
  reg_w(gspca_dev, 0x0071, reg71a, 4);
  break;
 case 1:
  reg_w(gspca_dev, 0x0071, reg71b, 4);
  break;
 default:

  reg_w(gspca_dev, 0x0071, reg71c, 4);
  break;
 case 3:
  reg_w(gspca_dev, 0x0071, reg71d, 4);
  break;
 }
 reg_w(gspca_dev, 0x007b, reg7b, 6);
 reg_w_val(gspca_dev, 0x00f8, 0x00);
 reg_w(gspca_dev, 0x0010, reg10, 8);
 reg_w_val(gspca_dev, 0x0098, 0x41);
 for (i = 0; i < 11; i++) {
  if (i == 3 || i == 5 || i == 8)
   length = 8;
  else
   length = 4;
  reg_w(gspca_dev, 0x00e5, ptsensor, length);
  if (length == 4)
   reg_r(gspca_dev, 0x00e8, 1);
  else
   reg_r(gspca_dev, 0x00e8, length);
  ptsensor += length;
 }
 reg_r(gspca_dev, 0x00e7, 8);
}
