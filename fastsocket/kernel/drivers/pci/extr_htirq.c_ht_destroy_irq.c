
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ht_irq_cfg {int dummy; } ;


 int destroy_irq (unsigned int) ;
 struct ht_irq_cfg* get_irq_data (unsigned int) ;
 int kfree (struct ht_irq_cfg*) ;
 int set_irq_chip (unsigned int,int *) ;
 int set_irq_data (unsigned int,int *) ;

void ht_destroy_irq(unsigned int irq)
{
 struct ht_irq_cfg *cfg;

 cfg = get_irq_data(irq);
 set_irq_chip(irq, ((void*)0));
 set_irq_data(irq, ((void*)0));
 destroy_irq(irq);

 kfree(cfg);
}
