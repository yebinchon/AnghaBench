
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stu300_dev {scalar_t__ virtbase; } ;


 scalar_t__ I2C_CR ;
 int I2C_CR_INTERRUPT_ENABLE ;
 int stu300_r8 (scalar_t__) ;
 int stu300_wr8 (int ,scalar_t__) ;

__attribute__((used)) static void stu300_irq_disable(struct stu300_dev *dev)
{
 u32 val;
 val = stu300_r8(dev->virtbase + I2C_CR);
 val &= ~I2C_CR_INTERRUPT_ENABLE;

 stu300_wr8(val, dev->virtbase + I2C_CR);
 stu300_wr8(val, dev->virtbase + I2C_CR);
}
