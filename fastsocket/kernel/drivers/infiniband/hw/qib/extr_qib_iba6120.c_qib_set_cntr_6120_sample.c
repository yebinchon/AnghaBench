
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qib_pportdata {TYPE_1__* dd; } ;
struct qib_chip_specific {scalar_t__ xmit_wait; scalar_t__ rpkts; scalar_t__ spkts; scalar_t__ rword; scalar_t__ sword; int pma_sample_status; int pma_timer; } ;
struct TYPE_2__ {struct qib_chip_specific* cspec; } ;


 int IB_PMA_SAMPLE_STATUS_DONE ;
 int IB_PMA_SAMPLE_STATUS_RUNNING ;
 int IB_PMA_SAMPLE_STATUS_STARTED ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int qib_snapshot_counters (struct qib_pportdata*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ usecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static void qib_set_cntr_6120_sample(struct qib_pportdata *ppd, u32 intv,
         u32 start)
{
 struct qib_chip_specific *cs = ppd->dd->cspec;

 if (start && intv) {
  cs->pma_sample_status = IB_PMA_SAMPLE_STATUS_STARTED;
  mod_timer(&cs->pma_timer, jiffies + usecs_to_jiffies(start));
 } else if (intv) {
  cs->pma_sample_status = IB_PMA_SAMPLE_STATUS_RUNNING;
  qib_snapshot_counters(ppd, &cs->sword, &cs->rword,
          &cs->spkts, &cs->rpkts, &cs->xmit_wait);
  mod_timer(&cs->pma_timer, jiffies + usecs_to_jiffies(intv));
 } else {
  cs->pma_sample_status = IB_PMA_SAMPLE_STATUS_DONE;
  cs->sword = 0;
  cs->rword = 0;
  cs->spkts = 0;
  cs->rpkts = 0;
  cs->xmit_wait = 0;
 }
}
