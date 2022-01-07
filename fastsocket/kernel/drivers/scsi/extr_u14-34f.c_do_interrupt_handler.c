
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int host_lock; } ;


 int IRQ_NONE ;
 int ihdlr (unsigned int) ;
 unsigned int num_boards ;
 TYPE_1__** sh ;
 char* sha ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t do_interrupt_handler(int irq, void *shap) {
   unsigned int j;
   unsigned long spin_flags;
   irqreturn_t ret;


   if ((j = (unsigned int)((char *)shap - sha)) >= num_boards) return IRQ_NONE;

   spin_lock_irqsave(sh[j]->host_lock, spin_flags);
   ret = ihdlr(j);
   spin_unlock_irqrestore(sh[j]->host_lock, spin_flags);
   return ret;
}
