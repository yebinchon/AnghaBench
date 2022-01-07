
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sd {int* sensor_reg_cache; int bridge; } ;
 int ov511_i2c_r (struct sd*,size_t) ;
 int ov518_i2c_r (struct sd*,size_t) ;
 int ovfx2_i2c_r (struct sd*,size_t) ;
 int w9968cf_i2c_r (struct sd*,size_t) ;

__attribute__((used)) static int i2c_r(struct sd *sd, u8 reg)
{
 int ret = -1;

 if (sd->sensor_reg_cache[reg] != -1)
  return sd->sensor_reg_cache[reg];

 switch (sd->bridge) {
 case 134:
 case 133:
  ret = ov511_i2c_r(sd, reg);
  break;
 case 132:
 case 131:
 case 130:
  ret = ov518_i2c_r(sd, reg);
  break;
 case 129:
  ret = ovfx2_i2c_r(sd, reg);
  break;
 case 128:
  ret = w9968cf_i2c_r(sd, reg);
  break;
 }

 if (ret >= 0)
  sd->sensor_reg_cache[reg] = ret;

 return ret;
}
