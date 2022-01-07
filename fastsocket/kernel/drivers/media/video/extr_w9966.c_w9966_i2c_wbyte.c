
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {int dummy; } ;


 int w9966_i2c_setscl (struct w9966_dev*,int) ;
 int w9966_i2c_setsda (struct w9966_dev*,int) ;

__attribute__((used)) static int w9966_i2c_wbyte(struct w9966_dev* cam, int data)
{
 int i;
 for (i = 7; i >= 0; i--)
 {
  w9966_i2c_setsda(cam, (data >> i) & 0x01);

  if (w9966_i2c_setscl(cam, 1) == -1)
   return -1;
  w9966_i2c_setscl(cam, 0);
 }

 w9966_i2c_setsda(cam, 1);

 if (w9966_i2c_setscl(cam, 1) == -1)
  return -1;
 w9966_i2c_setscl(cam, 0);

 return 0;
}
