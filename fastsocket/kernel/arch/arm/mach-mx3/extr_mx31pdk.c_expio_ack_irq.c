
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CPLD_INT_RESET_REG ;
 int MXC_IRQ_TO_EXPIO (int) ;
 int __raw_writew (int,int ) ;
 int expio_mask_irq (int) ;

__attribute__((used)) static void expio_ack_irq(uint32_t irq)
{
 uint32_t expio = MXC_IRQ_TO_EXPIO(irq);


 __raw_writew(1 << expio, CPLD_INT_RESET_REG);
 __raw_writew(0, CPLD_INT_RESET_REG);

 expio_mask_irq(irq);
}
