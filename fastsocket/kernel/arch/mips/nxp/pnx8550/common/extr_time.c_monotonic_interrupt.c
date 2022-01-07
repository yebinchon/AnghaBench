
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int write_c0_compare2 (int) ;

__attribute__((used)) static irqreturn_t monotonic_interrupt(int irq, void *dev_id)
{

 write_c0_compare2(-1);
 return IRQ_HANDLED;
}
