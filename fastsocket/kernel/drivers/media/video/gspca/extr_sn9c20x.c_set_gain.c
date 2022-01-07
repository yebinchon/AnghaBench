
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int i2c_addr; int sensor; size_t gain; } ;
struct gspca_dev {int dummy; } ;
 int* hv7131r_gain ;
 int i2c_w (struct gspca_dev*,int*) ;
 int* micron1_gain ;
 int* micron2_gain ;
 int* ov_gain ;

__attribute__((used)) static int set_gain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 gain[8] = {0x81, sd->i2c_addr, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1d};
 switch (sd->sensor) {
 case 132:
 case 131:
 case 128:
 case 129:
 case 130:
  gain[0] |= (2 << 4);
  gain[3] = ov_gain[sd->gain];
  break;
 case 134:
  gain[0] |= (3 << 4);
  gain[2] = 0x35;
  gain[3] = micron1_gain[sd->gain] >> 8;
  gain[4] = micron1_gain[sd->gain] & 0xff;
  break;
 case 133:
  gain[0] |= (3 << 4);
  gain[2] = 0x2f;
  gain[3] = micron1_gain[sd->gain] >> 8;
  gain[4] = micron1_gain[sd->gain] & 0xff;
  break;
 case 135:
  gain[0] |= (3 << 4);
  gain[2] = 0x2f;
  gain[3] = micron2_gain[sd->gain] >> 8;
  gain[4] = micron2_gain[sd->gain] & 0xff;
  break;
 case 136:
  gain[0] |= (2 << 4);
  gain[2] = 0x30;
  gain[3] = hv7131r_gain[sd->gain];
  break;
 default:
  return 0;
 }
 i2c_w(gspca_dev, gain);
 return 0;
}
