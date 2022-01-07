
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stu300_dev {scalar_t__ virtbase; int clk; } ;


 scalar_t__ I2C_CR ;
 int I2C_CR_PERIPHERAL_ENABLE ;
 scalar_t__ I2C_OAR1 ;
 scalar_t__ I2C_SR1 ;
 scalar_t__ I2C_SR2 ;
 unsigned long clk_get_rate (int ) ;
 int stu300_r8 (scalar_t__) ;
 int stu300_set_clk (struct stu300_dev*,unsigned long) ;
 int stu300_wr8 (int,scalar_t__) ;

__attribute__((used)) static int stu300_init_hw(struct stu300_dev *dev)
{
 u32 dummy;
 unsigned long clkrate;
 int ret;


 stu300_wr8(0x00, dev->virtbase + I2C_CR);




 stu300_wr8(0x00, dev->virtbase + I2C_OAR1);







 clkrate = clk_get_rate(dev->clk);
 ret = stu300_set_clk(dev, clkrate);

 if (ret)
  return ret;




 stu300_wr8(I2C_CR_PERIPHERAL_ENABLE,
      dev->virtbase + I2C_CR);
 stu300_wr8(I2C_CR_PERIPHERAL_ENABLE,
      dev->virtbase + I2C_CR);

 dummy = stu300_r8(dev->virtbase + I2C_SR2);
 dummy = stu300_r8(dev->virtbase + I2C_SR1);

 return 0;
}
