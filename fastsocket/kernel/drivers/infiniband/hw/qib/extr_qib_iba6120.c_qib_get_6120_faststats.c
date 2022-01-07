
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct qib_pportdata {int dummy; } ;
struct qib_devdata {int flags; scalar_t__ traffic_wds; int stats_timer; int eep_st_lock; int active_time; scalar_t__ diag_client; struct qib_pportdata* pport; } ;


 int ACTIVITY_TIMER ;
 int HZ ;
 int QIB_INITTED ;
 scalar_t__ QIB_TRAFFIC_ACTIVE_THRESHOLD ;
 int atomic_add (int,int *) ;
 int cr_wordrcv ;
 int cr_wordsend ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int qib_chk_6120_errormask (struct qib_devdata*) ;
 scalar_t__ qib_portcntr_6120 (struct qib_pportdata*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qib_get_6120_faststats(unsigned long opaque)
{
 struct qib_devdata *dd = (struct qib_devdata *) opaque;
 struct qib_pportdata *ppd = dd->pport;
 unsigned long flags;
 u64 traffic_wds;





 if (!(dd->flags & QIB_INITTED) || dd->diag_client)

  goto done;






 traffic_wds = qib_portcntr_6120(ppd, cr_wordsend) +
  qib_portcntr_6120(ppd, cr_wordrcv);
 spin_lock_irqsave(&dd->eep_st_lock, flags);
 traffic_wds -= dd->traffic_wds;
 dd->traffic_wds += traffic_wds;
 if (traffic_wds >= QIB_TRAFFIC_ACTIVE_THRESHOLD)
  atomic_add(5, &dd->active_time);
 spin_unlock_irqrestore(&dd->eep_st_lock, flags);

 qib_chk_6120_errormask(dd);
done:
 mod_timer(&dd->stats_timer, jiffies + HZ * ACTIVITY_TIMER);
}
