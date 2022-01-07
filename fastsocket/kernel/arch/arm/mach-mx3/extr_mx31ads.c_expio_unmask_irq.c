
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MXC_IRQ_TO_EXPIO (int) ;
 int PBC_INTMASK_SET_REG ;
 int __raw_writew (int,int ) ;

__attribute__((used)) static void expio_unmask_irq(u32 irq)
{
 u32 expio = MXC_IRQ_TO_EXPIO(irq);

 __raw_writew(1 << expio, PBC_INTMASK_SET_REG);
}
