
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int IRQ_BASE ;
 scalar_t__ S6_GPIO_IE ;
 scalar_t__ S6_REG_GPIO ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void mask(unsigned int irq)
{
 u8 r = readb(S6_REG_GPIO + S6_GPIO_IE);
 r &= ~(1 << (irq - IRQ_BASE));
 writeb(r, S6_REG_GPIO + S6_GPIO_IE);
}
