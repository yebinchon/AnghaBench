
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_pportdata {TYPE_1__* cpspec; int lflags_lock; int lflags; } ;
struct TYPE_2__ {int autoneg_work; } ;


 int QIBL_IB_AUTONEG_INPROG ;
 int QIB_IB_DDR ;
 int ib_wq ;
 int msecs_to_jiffies (int) ;
 int qib_7322_mini_pcs_reset (struct qib_pportdata*) ;
 int qib_autoneg_7322_send (struct qib_pportdata*,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_7322_ibspeed_fast (struct qib_pportdata*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void try_7322_autoneg(struct qib_pportdata *ppd)
{
 unsigned long flags;

 spin_lock_irqsave(&ppd->lflags_lock, flags);
 ppd->lflags |= QIBL_IB_AUTONEG_INPROG;
 spin_unlock_irqrestore(&ppd->lflags_lock, flags);
 qib_autoneg_7322_send(ppd, 0);
 set_7322_ibspeed_fast(ppd, QIB_IB_DDR);
 qib_7322_mini_pcs_reset(ppd);

 queue_delayed_work(ib_wq, &ppd->cpspec->autoneg_work,
      msecs_to_jiffies(2));
}
