
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {int i2c_state; } ;


 int W9966_I2C_W_DATA ;
 int udelay (int) ;
 int w9966_wReg (struct w9966_dev*,int,int ) ;

__attribute__((used)) static inline void w9966_i2c_setsda(struct w9966_dev* cam, int state)
{
 if (state)
  cam->i2c_state |= W9966_I2C_W_DATA;
 else
  cam->i2c_state &= ~W9966_I2C_W_DATA;

 w9966_wReg(cam, 0x18, cam->i2c_state);
 udelay(5);
}
