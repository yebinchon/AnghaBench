
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_devdata {int ipath_pioavregs; int ipath_flags; int* ipath_pioavailshadow; int* ipath_pioavailkernel; int * ipath_pioavailregs_dma; } ;


 int INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT ;
 int IPATH_SWAP_PIOBUFS ;
 int ipath_dbg (char*,int,unsigned long long,int) ;
 int ipath_pioavail_lock ;
 int le64_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipath_reset_availshadow(struct ipath_devdata *dd)
{
 int i, im;
 unsigned long flags;

 spin_lock_irqsave(&ipath_pioavail_lock, flags);
 for (i = 0; i < dd->ipath_pioavregs; i++) {
  u64 val, oldval;

  im = (i > 3 && (dd->ipath_flags & IPATH_SWAP_PIOBUFS)) ?
   i ^ 1 : i;
  val = le64_to_cpu(dd->ipath_pioavailregs_dma[im]);




  oldval = dd->ipath_pioavailshadow[i];
  dd->ipath_pioavailshadow[i] = val |
   ((~dd->ipath_pioavailkernel[i] <<
   INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT) &
   0xaaaaaaaaaaaaaaaaULL);
  if (oldval != dd->ipath_pioavailshadow[i])
   ipath_dbg("shadow[%d] was %Lx, now %lx\n",
    i, (unsigned long long) oldval,
    dd->ipath_pioavailshadow[i]);
 }
 spin_unlock_irqrestore(&ipath_pioavail_lock, flags);
}
