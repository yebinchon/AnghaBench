
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int sensor; int freq; } ;
struct gspca_dev {int dummy; } ;




 int reg_w_buf (struct gspca_dev*,int*,int) ;

__attribute__((used)) static void setfreq(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 reg66;
 u8 freq[4] = { 0x66, 0x00, 0xa8, 0xe8 };

 switch (sd->sensor) {
 case 129:
  if (sd->freq != 0)
   freq[3] = 0xa8;
  reg66 = 0x41;
  break;
 case 128:
  reg66 = 0xca;
  break;
 default:
  reg66 = 0x40;
  break;
 }
 switch (sd->freq) {
 case 0:
  freq[3] = 0xf0;
  break;
 case 2:
  reg66 &= ~0x40;
  break;
 }
 freq[1] = reg66;

 reg_w_buf(gspca_dev, freq, sizeof freq);
}
