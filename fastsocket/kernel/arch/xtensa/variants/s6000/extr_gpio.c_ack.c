
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_BASE ;
 scalar_t__ S6_GPIO_IC ;
 scalar_t__ S6_REG_GPIO ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void ack(unsigned int irq)
{
 writeb(1 << (irq - IRQ_BASE), S6_REG_GPIO + S6_GPIO_IC);
}
