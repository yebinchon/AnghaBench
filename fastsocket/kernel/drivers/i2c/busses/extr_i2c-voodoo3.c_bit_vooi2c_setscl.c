
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int I2C_SCL_OUT ;
 scalar_t__ REG ;
 scalar_t__ ioaddr ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void bit_vooi2c_setscl(void *data, int val)
{
 unsigned int r;
 r = readl(ioaddr + REG);
 if (val)
  r |= I2C_SCL_OUT;
 else
  r &= ~I2C_SCL_OUT;
 writel(r, ioaddr + REG);
 readl(ioaddr + REG);
}
