
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {int i2c_state; } ;


 int W9966_I2C_W_CLOCK ;
 int jiffies ;
 scalar_t__ time_after (int,unsigned long) ;
 int udelay (int) ;
 int w9966_i2c_getscl (struct w9966_dev*) ;
 int w9966_wReg (struct w9966_dev*,int,int ) ;

__attribute__((used)) static inline int w9966_i2c_setscl(struct w9966_dev* cam, int state)
{
 unsigned long timeout;

 if (state)
  cam->i2c_state |= W9966_I2C_W_CLOCK;
 else
  cam->i2c_state &= ~W9966_I2C_W_CLOCK;

 w9966_wReg(cam, 0x18, cam->i2c_state);
 udelay(5);


 if (state) {
  timeout = jiffies + 100;
  while (!w9966_i2c_getscl(cam)) {
   if (time_after(jiffies, timeout))
    return -1;
  }
 }
 return 0;
}
