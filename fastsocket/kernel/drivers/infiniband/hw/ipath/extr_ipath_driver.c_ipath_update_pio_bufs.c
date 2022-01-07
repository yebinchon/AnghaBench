
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_devdata {unsigned long* ipath_pioavailshadow; int ipath_flags; int* ipath_pioavailkernel; int volatile* ipath_pioavailregs_dma; int ipath_pioavregs; } ;
typedef int volatile __le64 ;


 int INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT ;
 int IPATH_SWAP_PIOBUFS ;
 int PKT ;
 int __IPATH_VERBDBG ;
 int ipath_cdbg (int ,char*,unsigned long long,unsigned long,unsigned long long,unsigned long,unsigned long long,unsigned long,unsigned long long,unsigned long) ;
 int ipath_dbg (char*) ;
 int ipath_debug ;
 int ipath_pioavail_lock ;
 int le64_to_cpu (int volatile) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipath_update_pio_bufs(struct ipath_devdata *dd)
{
 unsigned long flags;
 int i;
 const unsigned piobregs = (unsigned)dd->ipath_pioavregs;
 if (!dd->ipath_pioavailregs_dma) {
  ipath_dbg("Update shadow pioavail, but regs_dma NULL!\n");
  return;
 }
 if (ipath_debug & __IPATH_VERBDBG) {

  volatile __le64 *dma = dd->ipath_pioavailregs_dma;
  unsigned long *shadow = dd->ipath_pioavailshadow;

  ipath_cdbg(PKT, "Refill avail, dma0=%llx shad0=%lx, "
      "d1=%llx s1=%lx, d2=%llx s2=%lx, d3=%llx "
      "s3=%lx\n",
      (unsigned long long) le64_to_cpu(dma[0]),
      shadow[0],
      (unsigned long long) le64_to_cpu(dma[1]),
      shadow[1],
      (unsigned long long) le64_to_cpu(dma[2]),
      shadow[2],
      (unsigned long long) le64_to_cpu(dma[3]),
      shadow[3]);
  if (piobregs > 4)
   ipath_cdbg(
    PKT, "2nd group, dma4=%llx shad4=%lx, "
    "d5=%llx s5=%lx, d6=%llx s6=%lx, "
    "d7=%llx s7=%lx\n",
    (unsigned long long) le64_to_cpu(dma[4]),
    shadow[4],
    (unsigned long long) le64_to_cpu(dma[5]),
    shadow[5],
    (unsigned long long) le64_to_cpu(dma[6]),
    shadow[6],
    (unsigned long long) le64_to_cpu(dma[7]),
    shadow[7]);
 }
 spin_lock_irqsave(&ipath_pioavail_lock, flags);
 for (i = 0; i < piobregs; i++) {
  u64 pchbusy, pchg, piov, pnew;



  if (i > 3 && (dd->ipath_flags & IPATH_SWAP_PIOBUFS))
   piov = le64_to_cpu(dd->ipath_pioavailregs_dma[i ^ 1]);
  else
   piov = le64_to_cpu(dd->ipath_pioavailregs_dma[i]);
  pchg = dd->ipath_pioavailkernel[i] &
   ~(dd->ipath_pioavailshadow[i] ^ piov);
  pchbusy = pchg << INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT;
  if (pchg && (pchbusy & dd->ipath_pioavailshadow[i])) {
   pnew = dd->ipath_pioavailshadow[i] & ~pchbusy;
   pnew |= piov & pchbusy;
   dd->ipath_pioavailshadow[i] = pnew;
  }
 }
 spin_unlock_irqrestore(&ipath_pioavail_lock, flags);
}
