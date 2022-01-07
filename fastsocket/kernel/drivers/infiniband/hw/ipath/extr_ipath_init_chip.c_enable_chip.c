
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ipath_devdata {int ipath_rcvctrl; int ipath_sendctrl; int ipath_pioupd_thresh; int ipath_r_portenable_shift; int ipath_r_intravail_shift; int ipath_flags; unsigned long long ipath_r_tailupd_shift; int ipath_rhdrhead_intr_off; int ipath_pioavregs; int * ipath_pioavailshadow; int * ipath_pioavailregs_dma; TYPE_2__** ipath_pd; TYPE_1__* ipath_kregs; int ipath_sendctrl_lock; } ;
typedef int __le64 ;
struct TYPE_4__ {int port_head; } ;
struct TYPE_3__ {int kr_rcvctrl; int kr_scratch; int kr_sendctrl; } ;


 int INFINIPATH_S_PIOBUFAVAILUPD ;
 int INFINIPATH_S_PIOENABLE ;
 int INFINIPATH_S_UPDTHRESH_SHIFT ;
 int IPATH_INITTED ;
 int IPATH_NODMA_RTAIL ;
 int IPATH_PRESENT ;
 int IPATH_SWAP_PIOBUFS ;
 int init_waitqueue_head (int *) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_read_ureg32 (struct ipath_devdata*,int ,int ) ;
 int ipath_state_wait ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int) ;
 int ipath_write_ureg (struct ipath_devdata*,int ,int,int ) ;
 int le64_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ur_rcvegrindexhead ;
 int ur_rcvegrindextail ;
 int ur_rcvhdrhead ;

__attribute__((used)) static void enable_chip(struct ipath_devdata *dd, int reinit)
{
 u32 val;
 u64 rcvmask;
 unsigned long flags;
 int i;

 if (!reinit)
  init_waitqueue_head(&ipath_state_wait);

 ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvctrl,
    dd->ipath_rcvctrl);

 spin_lock_irqsave(&dd->ipath_sendctrl_lock, flags);

 dd->ipath_sendctrl = INFINIPATH_S_PIOENABLE |
  INFINIPATH_S_PIOBUFAVAILUPD;





 if (dd->ipath_pioupd_thresh)
  dd->ipath_sendctrl |= dd->ipath_pioupd_thresh
   << INFINIPATH_S_UPDTHRESH_SHIFT;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_sendctrl, dd->ipath_sendctrl);
 ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);
 spin_unlock_irqrestore(&dd->ipath_sendctrl_lock, flags);





 rcvmask = 1ULL;
 dd->ipath_rcvctrl |= (rcvmask << dd->ipath_r_portenable_shift) |
  (rcvmask << dd->ipath_r_intravail_shift);
 if (!(dd->ipath_flags & IPATH_NODMA_RTAIL))
  dd->ipath_rcvctrl |= (1ULL << dd->ipath_r_tailupd_shift);

 ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvctrl,
    dd->ipath_rcvctrl);





 dd->ipath_flags |= IPATH_INITTED;





 val = ipath_read_ureg32(dd, ur_rcvegrindextail, 0);
 ipath_write_ureg(dd, ur_rcvegrindexhead, val, 0);


 ipath_write_ureg(dd, ur_rcvhdrhead,
    dd->ipath_rhdrhead_intr_off |
    dd->ipath_pd[0]->port_head, 0);







 for (i = 0; i < dd->ipath_pioavregs; i++) {
  __le64 pioavail;




  if (i > 3 && (dd->ipath_flags & IPATH_SWAP_PIOBUFS))
   pioavail = dd->ipath_pioavailregs_dma[i ^ 1];
  else
   pioavail = dd->ipath_pioavailregs_dma[i];





  dd->ipath_pioavailshadow[i] = le64_to_cpu(pioavail);
 }

 dd->ipath_flags |= IPATH_PRESENT;
}
