
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTCLEAR ;
 int set_sr (int,int ) ;

__attribute__((used)) static void xtensa_irq_ack(unsigned int irq)
{
 set_sr(1 << irq, INTCLEAR);
}
