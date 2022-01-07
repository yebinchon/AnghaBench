
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1550_spi {int (* irq_callback ) (struct au1550_spi*) ;} ;
typedef int irqreturn_t ;


 int stub1 (struct au1550_spi*) ;

__attribute__((used)) static irqreturn_t au1550_spi_irq(int irq, void *dev)
{
 struct au1550_spi *hw = dev;
 return hw->irq_callback(hw);
}
