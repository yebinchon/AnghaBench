
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {int dummy; } ;


 unsigned char const W9966_I2C_R_DATA ;
 unsigned char w9966_rReg (struct w9966_dev*,int) ;

__attribute__((used)) static inline int w9966_i2c_getsda(struct w9966_dev* cam)
{
 const unsigned char state = w9966_rReg(cam, 0x18);
 return ((state & W9966_I2C_R_DATA) > 0);
}
