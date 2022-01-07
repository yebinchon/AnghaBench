
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_pportdata {int p_sendctrl; struct qib_devdata* dd; } ;
struct qib_devdata {int sendctrl_lock; } ;
struct ib_vl_weight_elem {int vl; int weight; } ;


 int IBVLArbiterEn ;
 int LowPriority0_0 ;
 int SYM_LSB (int ,int ) ;
 int SYM_MASK (int ,int ) ;
 int SYM_RMASK (int ,int ) ;
 int SendCtrl_0 ;
 int VirtualLane ;
 int Weight ;
 int kr_scratch ;
 unsigned int krp_sendctrl ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;
 int qib_write_kreg_port (struct qib_pportdata*,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_vl_weights(struct qib_pportdata *ppd, unsigned regno,
      struct ib_vl_weight_elem *vl)
{
 unsigned i;

 for (i = 0; i < 16; i++, regno++, vl++) {
  u64 val;

  val = ((vl->vl & SYM_RMASK(LowPriority0_0, VirtualLane)) <<
   SYM_LSB(LowPriority0_0, VirtualLane)) |
        ((vl->weight & SYM_RMASK(LowPriority0_0, Weight)) <<
   SYM_LSB(LowPriority0_0, Weight));
  qib_write_kreg_port(ppd, regno, val);
 }
 if (!(ppd->p_sendctrl & SYM_MASK(SendCtrl_0, IBVLArbiterEn))) {
  struct qib_devdata *dd = ppd->dd;
  unsigned long flags;

  spin_lock_irqsave(&dd->sendctrl_lock, flags);
  ppd->p_sendctrl |= SYM_MASK(SendCtrl_0, IBVLArbiterEn);
  qib_write_kreg_port(ppd, krp_sendctrl, ppd->p_sendctrl);
  qib_write_kreg(dd, kr_scratch, 0);
  spin_unlock_irqrestore(&dd->sendctrl_lock, flags);
 }
}
