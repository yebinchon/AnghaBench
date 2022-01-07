
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXT_ENABLE_REG ;
 int KEY_IRQ_ENABLE_REG ;
 scalar_t__ UART_IER ;
 int master_outb (int ,int ) ;
 int outb (int ,scalar_t__) ;
 unsigned int* serports ;

__attribute__((used)) static void q40_disable_irqs(void)
{
 unsigned i, j;

 j = 0;
 while ((i = serports[j++]))
  outb(0, i + UART_IER);
 master_outb(0, EXT_ENABLE_REG);
 master_outb(0, KEY_IRQ_ENABLE_REG);
}
