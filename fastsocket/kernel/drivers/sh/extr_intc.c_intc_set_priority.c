
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_handle_int {int handle; } ;
struct intc_desc_int {int nr_prio; int prio; } ;


 int EINVAL ;
 scalar_t__ REG_FN_ERR ;
 scalar_t__ _INTC_FN (int ) ;
 int _INTC_WIDTH (int ) ;
 int _intc_enable (unsigned int,int ) ;
 struct intc_desc_int* get_intc_desc (unsigned int) ;
 struct intc_handle_int* intc_find_irq (int ,int ,unsigned int) ;
 unsigned int* intc_prio_level ;

int intc_set_priority(unsigned int irq, unsigned int prio)
{
 struct intc_desc_int *d = get_intc_desc(irq);
 struct intc_handle_int *ihp;

 if (!intc_prio_level[irq] || prio <= 1)
  return -EINVAL;

 ihp = intc_find_irq(d->prio, d->nr_prio, irq);
 if (ihp) {
  if (prio >= (1 << _INTC_WIDTH(ihp->handle)))
   return -EINVAL;

  intc_prio_level[irq] = prio;







  if (_INTC_FN(ihp->handle) != REG_FN_ERR)
   _intc_enable(irq, ihp->handle);
 }
 return 0;
}
