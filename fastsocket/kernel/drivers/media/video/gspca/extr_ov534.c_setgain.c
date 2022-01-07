
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int gain; scalar_t__ agc; } ;
struct gspca_dev {int dummy; } ;


 int sccb_reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 val;

 if (sd->agc)
  return;

 val = sd->gain;
 switch (val & 0x30) {
 case 0x00:
  val &= 0x0f;
  break;
 case 0x10:
  val &= 0x0f;
  val |= 0x30;
  break;
 case 0x20:
  val &= 0x0f;
  val |= 0x70;
  break;
 default:

  val &= 0x0f;
  val |= 0xf0;
  break;
 }
 sccb_reg_write(gspca_dev, 0x00, val);
}
