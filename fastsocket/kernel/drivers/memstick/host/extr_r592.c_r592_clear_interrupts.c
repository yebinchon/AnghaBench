
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int dummy; } ;


 int IRQ_ALL_ACK_MASK ;
 int IRQ_ALL_EN_MASK ;
 int R592_REG_MSC ;
 int r592_clear_reg_mask (struct r592_device*,int ,int ) ;

__attribute__((used)) static void r592_clear_interrupts(struct r592_device *dev)
{

 r592_clear_reg_mask(dev, R592_REG_MSC, IRQ_ALL_ACK_MASK);
 r592_clear_reg_mask(dev, R592_REG_MSC, IRQ_ALL_EN_MASK);
}
