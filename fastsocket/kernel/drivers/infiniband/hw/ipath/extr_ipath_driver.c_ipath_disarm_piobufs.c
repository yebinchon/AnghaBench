
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {unsigned int ipath_sendctrl; int ipath_sendctrl_lock; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int kr_scratch; int kr_sendctrl; } ;


 unsigned int INFINIPATH_S_DISARM ;
 unsigned int INFINIPATH_S_DISARMPIOBUF_SHIFT ;
 int PKT ;
 int ipath_cdbg (int ,char*,unsigned int,unsigned int) ;
 int ipath_force_pio_avail_update (struct ipath_devdata*) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipath_disarm_piobufs(struct ipath_devdata *dd, unsigned first,
     unsigned cnt)
{
 unsigned i, last = first + cnt;
 unsigned long flags;

 ipath_cdbg(PKT, "disarm %u PIObufs first=%u\n", cnt, first);
 for (i = first; i < last; i++) {
  spin_lock_irqsave(&dd->ipath_sendctrl_lock, flags);





  ipath_write_kreg(dd, dd->ipath_kregs->kr_sendctrl,
   dd->ipath_sendctrl | INFINIPATH_S_DISARM |
   (i << INFINIPATH_S_DISARMPIOBUF_SHIFT));

  ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);
  spin_unlock_irqrestore(&dd->ipath_sendctrl_lock, flags);
 }

 ipath_force_pio_avail_update(dd);
}
