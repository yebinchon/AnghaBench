
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {scalar_t__ usb_err; } ;
struct sd {size_t* sensor_reg_cache; int bridge; TYPE_1__ gspca_dev; } ;
 int memset (size_t*,int,int) ;
 int ov511_i2c_w (struct sd*,size_t,size_t) ;
 int ov518_i2c_w (struct sd*,size_t,size_t) ;
 int ovfx2_i2c_w (struct sd*,size_t,size_t) ;
 int w9968cf_i2c_w (struct sd*,size_t,size_t) ;

__attribute__((used)) static void i2c_w(struct sd *sd, u8 reg, u8 value)
{
 if (sd->sensor_reg_cache[reg] == value)
  return;

 switch (sd->bridge) {
 case 134:
 case 133:
  ov511_i2c_w(sd, reg, value);
  break;
 case 132:
 case 131:
 case 130:
  ov518_i2c_w(sd, reg, value);
  break;
 case 129:
  ovfx2_i2c_w(sd, reg, value);
  break;
 case 128:
  w9968cf_i2c_w(sd, reg, value);
  break;
 }

 if (sd->gspca_dev.usb_err >= 0) {

  if (reg == 0x12 && (value & 0x80))
   memset(sd->sensor_reg_cache, -1,
    sizeof(sd->sensor_reg_cache));
  else
   sd->sensor_reg_cache[reg] = value;
 }
}
