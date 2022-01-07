
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_NONE ;
 int printk (char*,int) ;

__attribute__((used)) static irqreturn_t bogus_int(int irq, void *dev_id)
{
 printk("Got interrupt %i!\n",irq);
 return IRQ_NONE;
}
