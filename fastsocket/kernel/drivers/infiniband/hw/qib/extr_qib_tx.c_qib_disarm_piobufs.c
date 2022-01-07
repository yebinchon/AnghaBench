
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int pioavail_lock; int pport; int (* f_sendctrl ) (int ,int ) ;int pio_need_disarm; } ;


 int QIB_SENDCTRL_DISARM_BUF (unsigned int) ;
 int __clear_bit (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;

void qib_disarm_piobufs(struct qib_devdata *dd, unsigned first, unsigned cnt)
{
 unsigned long flags;
 unsigned i;
 unsigned last;

 last = first + cnt;
 spin_lock_irqsave(&dd->pioavail_lock, flags);
 for (i = first; i < last; i++) {
  __clear_bit(i, dd->pio_need_disarm);
  dd->f_sendctrl(dd->pport, QIB_SENDCTRL_DISARM_BUF(i));
 }
 spin_unlock_irqrestore(&dd->pioavail_lock, flags);
}
