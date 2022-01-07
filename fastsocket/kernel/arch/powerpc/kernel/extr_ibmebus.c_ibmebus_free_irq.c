
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int free_irq (unsigned int,void*) ;
 int irq_dispose_mapping (unsigned int) ;
 unsigned int irq_find_mapping (int *,int ) ;

void ibmebus_free_irq(u32 ist, void *dev_id)
{
 unsigned int irq = irq_find_mapping(((void*)0), ist);

 free_irq(irq, dev_id);
 irq_dispose_mapping(irq);
}
