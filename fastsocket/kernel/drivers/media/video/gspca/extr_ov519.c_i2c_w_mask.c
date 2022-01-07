
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int i2c_r (struct sd*,int) ;
 int i2c_w (struct sd*,int,int) ;

__attribute__((used)) static void i2c_w_mask(struct sd *sd,
   u8 reg,
   u8 value,
   u8 mask)
{
 int rc;
 u8 oldval;

 value &= mask;
 rc = i2c_r(sd, reg);
 if (rc < 0)
  return;
 oldval = rc & ~mask;
 value |= oldval;
 i2c_w(sd, reg, value);
}
