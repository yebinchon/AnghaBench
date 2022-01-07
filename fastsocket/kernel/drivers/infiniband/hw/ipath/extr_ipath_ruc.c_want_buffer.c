
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ qp_type; } ;
struct ipath_qp {TYPE_2__ ibqp; } ;
struct ipath_devdata {int ipath_flags; int ipath_sendctrl_lock; TYPE_1__* ipath_kregs; int ipath_sendctrl; } ;
struct TYPE_3__ {int kr_scratch; int kr_sendctrl; } ;


 scalar_t__ IB_QPT_SMI ;
 int INFINIPATH_S_PIOINTBUFAVAIL ;
 int IPATH_HAS_SEND_DMA ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void want_buffer(struct ipath_devdata *dd, struct ipath_qp *qp)
{
 if (!(dd->ipath_flags & IPATH_HAS_SEND_DMA) ||
     qp->ibqp.qp_type == IB_QPT_SMI) {
  unsigned long flags;

  spin_lock_irqsave(&dd->ipath_sendctrl_lock, flags);
  dd->ipath_sendctrl |= INFINIPATH_S_PIOINTBUFAVAIL;
  ipath_write_kreg(dd, dd->ipath_kregs->kr_sendctrl,
     dd->ipath_sendctrl);
  ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);
  spin_unlock_irqrestore(&dd->ipath_sendctrl_lock, flags);
 }
}
