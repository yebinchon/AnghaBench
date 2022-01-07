
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ flags; int timer; int counter; } ;
struct TYPE_3__ {int lock; } ;
struct qib_pportdata {TYPE_2__ cong_stats; TYPE_1__ ibport_data; } ;
struct qib_devdata {scalar_t__ (* f_portcntr ) (struct qib_pportdata*,int ) ;int (* f_set_cntr_sample ) (struct qib_pportdata*,int ,int) ;} ;


 scalar_t__ HZ ;
 scalar_t__ IB_PMA_CONG_HW_CONTROL_SAMPLE ;
 scalar_t__ IB_PMA_CONG_HW_CONTROL_TIMER ;
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ;
 int QIBPORTCNTR_PSSTAT ;
 int QIB_CONG_TIMER_PSINTERVAL ;
 int cache_hw_sample_counters (struct qib_pportdata*) ;
 struct qib_devdata* dd_from_ppd (struct qib_pportdata*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (struct qib_pportdata*,int ) ;
 int stub2 (struct qib_pportdata*,int ,int) ;
 int xmit_wait_get_value_delta (struct qib_pportdata*) ;

__attribute__((used)) static void xmit_wait_timer_func(unsigned long opaque)
{
 struct qib_pportdata *ppd = (struct qib_pportdata *)opaque;
 struct qib_devdata *dd = dd_from_ppd(ppd);
 unsigned long flags;
 u8 status;

 spin_lock_irqsave(&ppd->ibport_data.lock, flags);
 if (ppd->cong_stats.flags == IB_PMA_CONG_HW_CONTROL_SAMPLE) {
  status = dd->f_portcntr(ppd, QIBPORTCNTR_PSSTAT);
  if (status == IB_PMA_SAMPLE_STATUS_DONE) {

   cache_hw_sample_counters(ppd);
   ppd->cong_stats.flags = IB_PMA_CONG_HW_CONTROL_TIMER;
  } else
   goto done;
 }
 ppd->cong_stats.counter = xmit_wait_get_value_delta(ppd);
 dd->f_set_cntr_sample(ppd, QIB_CONG_TIMER_PSINTERVAL, 0x0);
done:
 spin_unlock_irqrestore(&ppd->ibport_data.lock, flags);
 mod_timer(&ppd->cong_stats.timer, jiffies + HZ);
}
