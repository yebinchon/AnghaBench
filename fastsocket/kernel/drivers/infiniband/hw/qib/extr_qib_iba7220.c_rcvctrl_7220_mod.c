
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {unsigned long long rcvctrl; unsigned long long ctxtcnt; int flags; int rhdrhead_intr_off; int first_user_ctxt; unsigned int cfgctxts; TYPE_2__* cspec; TYPE_1__** rcd; } ;
struct TYPE_4__ {int rcvmod_lock; } ;
struct TYPE_3__ {int seq_cnt; int head; int rcvhdrq_phys; int rcvhdrqtailaddr_phys; } ;


 int IBA7220_R_INTRAVAIL_SHIFT ;
 unsigned long long IBA7220_R_PKEY_DIS_SHIFT ;
 unsigned long long IBA7220_R_TAILUPD_SHIFT ;
 int PortEnable ;
 int QIB_NODMA_RTAIL ;
 unsigned int QIB_RCVCTRL_CTXT_DIS ;
 unsigned int QIB_RCVCTRL_CTXT_ENB ;
 unsigned int QIB_RCVCTRL_INTRAVAIL_DIS ;
 unsigned int QIB_RCVCTRL_INTRAVAIL_ENB ;
 unsigned int QIB_RCVCTRL_PKEY_DIS ;
 unsigned int QIB_RCVCTRL_PKEY_ENB ;
 unsigned int QIB_RCVCTRL_TAILUPD_DIS ;
 unsigned int QIB_RCVCTRL_TAILUPD_ENB ;
 int RcvCtrl ;
 int SYM_LSB (int ,int ) ;
 int kr_rcvctrl ;
 int kr_rcvhdraddr ;
 int kr_rcvhdrtailaddr ;
 int qib_read_ureg32 (struct qib_devdata*,int ,int) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;
 int qib_write_kreg_ctxt (struct qib_devdata*,int ,unsigned int,int ) ;
 int qib_write_ureg (struct qib_devdata*,int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ur_rcvegrindexhead ;
 int ur_rcvegrindextail ;
 int ur_rcvhdrhead ;
 int ur_rcvhdrtail ;

__attribute__((used)) static void rcvctrl_7220_mod(struct qib_pportdata *ppd, unsigned int op,
        int ctxt)
{
 struct qib_devdata *dd = ppd->dd;
 u64 mask, val;
 unsigned long flags;

 spin_lock_irqsave(&dd->cspec->rcvmod_lock, flags);
 if (op & QIB_RCVCTRL_TAILUPD_ENB)
  dd->rcvctrl |= (1ULL << IBA7220_R_TAILUPD_SHIFT);
 if (op & QIB_RCVCTRL_TAILUPD_DIS)
  dd->rcvctrl &= ~(1ULL << IBA7220_R_TAILUPD_SHIFT);
 if (op & QIB_RCVCTRL_PKEY_ENB)
  dd->rcvctrl &= ~(1ULL << IBA7220_R_PKEY_DIS_SHIFT);
 if (op & QIB_RCVCTRL_PKEY_DIS)
  dd->rcvctrl |= (1ULL << IBA7220_R_PKEY_DIS_SHIFT);
 if (ctxt < 0)
  mask = (1ULL << dd->ctxtcnt) - 1;
 else
  mask = (1ULL << ctxt);
 if (op & QIB_RCVCTRL_CTXT_ENB) {

  dd->rcvctrl |= (mask << SYM_LSB(RcvCtrl, PortEnable));
  if (!(dd->flags & QIB_NODMA_RTAIL))
   dd->rcvctrl |= 1ULL << IBA7220_R_TAILUPD_SHIFT;

  qib_write_kreg_ctxt(dd, kr_rcvhdrtailaddr, ctxt,
   dd->rcd[ctxt]->rcvhdrqtailaddr_phys);
  qib_write_kreg_ctxt(dd, kr_rcvhdraddr, ctxt,
   dd->rcd[ctxt]->rcvhdrq_phys);
  dd->rcd[ctxt]->seq_cnt = 1;
 }
 if (op & QIB_RCVCTRL_CTXT_DIS)
  dd->rcvctrl &= ~(mask << SYM_LSB(RcvCtrl, PortEnable));
 if (op & QIB_RCVCTRL_INTRAVAIL_ENB)
  dd->rcvctrl |= (mask << IBA7220_R_INTRAVAIL_SHIFT);
 if (op & QIB_RCVCTRL_INTRAVAIL_DIS)
  dd->rcvctrl &= ~(mask << IBA7220_R_INTRAVAIL_SHIFT);
 qib_write_kreg(dd, kr_rcvctrl, dd->rcvctrl);
 if ((op & QIB_RCVCTRL_INTRAVAIL_ENB) && dd->rhdrhead_intr_off) {

  val = qib_read_ureg32(dd, ur_rcvhdrhead, ctxt) |
   dd->rhdrhead_intr_off;
  qib_write_ureg(dd, ur_rcvhdrhead, val, ctxt);
 }
 if (op & QIB_RCVCTRL_CTXT_ENB) {






  val = qib_read_ureg32(dd, ur_rcvegrindextail, ctxt);
  qib_write_ureg(dd, ur_rcvegrindexhead, val, ctxt);

  val = qib_read_ureg32(dd, ur_rcvhdrtail, ctxt);
  dd->rcd[ctxt]->head = val;

  if (ctxt < dd->first_user_ctxt)
   val |= dd->rhdrhead_intr_off;
  qib_write_ureg(dd, ur_rcvhdrhead, val, ctxt);
 }
 if (op & QIB_RCVCTRL_CTXT_DIS) {
  if (ctxt >= 0) {
   qib_write_kreg_ctxt(dd, kr_rcvhdrtailaddr, ctxt, 0);
   qib_write_kreg_ctxt(dd, kr_rcvhdraddr, ctxt, 0);
  } else {
   unsigned i;

   for (i = 0; i < dd->cfgctxts; i++) {
    qib_write_kreg_ctxt(dd, kr_rcvhdrtailaddr,
          i, 0);
    qib_write_kreg_ctxt(dd, kr_rcvhdraddr, i, 0);
   }
  }
 }
 spin_unlock_irqrestore(&dd->cspec->rcvmod_lock, flags);
}
