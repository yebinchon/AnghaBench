
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct qib_pportdata {int link_speed_active; int lflags; TYPE_3__* dd; TYPE_1__* cpspec; int link_speed_supported; } ;
struct qib_devdata {int num_pports; int flags; int stats_timer; scalar_t__ diag_client; struct qib_pportdata* pport; } ;
struct TYPE_6__ {scalar_t__ traffic_wds; TYPE_2__* cspec; int eep_st_lock; int active_time; } ;
struct TYPE_5__ {scalar_t__ r1; } ;
struct TYPE_4__ {scalar_t__ qdr_dfe_on; scalar_t__ qdr_dfe_time; } ;


 int ACTIVITY_TIMER ;
 int HZ ;
 int QDR_STATIC_ADAPT_INIT ;
 int QDR_STATIC_ADAPT_INIT_R1 ;
 int QIBL_LINKACTIVE ;
 int QIBL_LINKARMED ;
 int QIBL_LINKINIT ;
 int QIBPORTCNTR_WORDRCV ;
 int QIBPORTCNTR_WORDSEND ;
 int QIB_IB_QDR ;
 int QIB_INITTED ;
 scalar_t__ QIB_TRAFFIC_ACTIVE_THRESHOLD ;
 int atomic_add (int,int *) ;
 int force_h1 (struct qib_pportdata*) ;
 scalar_t__ jiffies ;
 int krp_static_adapt_dis (int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ qib_portcntr_7322 (struct qib_pportdata*,int ) ;
 int qib_write_kreg_port (struct qib_pportdata*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_is_before_jiffies (scalar_t__) ;

__attribute__((used)) static void qib_get_7322_faststats(unsigned long opaque)
{
 struct qib_devdata *dd = (struct qib_devdata *) opaque;
 struct qib_pportdata *ppd;
 unsigned long flags;
 u64 traffic_wds;
 int pidx;

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;






  if (!ppd->link_speed_supported || !(dd->flags & QIB_INITTED)
      || dd->diag_client)
   continue;






  traffic_wds = qib_portcntr_7322(ppd, QIBPORTCNTR_WORDRCV) +
   qib_portcntr_7322(ppd, QIBPORTCNTR_WORDSEND);
  spin_lock_irqsave(&ppd->dd->eep_st_lock, flags);
  traffic_wds -= ppd->dd->traffic_wds;
  ppd->dd->traffic_wds += traffic_wds;
  if (traffic_wds >= QIB_TRAFFIC_ACTIVE_THRESHOLD)
   atomic_add(ACTIVITY_TIMER, &ppd->dd->active_time);
  spin_unlock_irqrestore(&ppd->dd->eep_st_lock, flags);
  if (ppd->cpspec->qdr_dfe_on && (ppd->link_speed_active &
      QIB_IB_QDR) &&
      (ppd->lflags & (QIBL_LINKINIT | QIBL_LINKARMED |
        QIBL_LINKACTIVE)) &&
      ppd->cpspec->qdr_dfe_time &&
      time_is_before_jiffies(ppd->cpspec->qdr_dfe_time)) {
   ppd->cpspec->qdr_dfe_on = 0;

   qib_write_kreg_port(ppd, krp_static_adapt_dis(2),
         ppd->dd->cspec->r1 ?
         QDR_STATIC_ADAPT_INIT_R1 :
         QDR_STATIC_ADAPT_INIT);
   force_h1(ppd);
  }
 }
 mod_timer(&dd->stats_timer, jiffies + HZ * ACTIVITY_TIMER);
}
