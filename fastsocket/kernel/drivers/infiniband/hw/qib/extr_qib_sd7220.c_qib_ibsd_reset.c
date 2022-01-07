
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {unsigned long long hwerrmask; int sdepb_lock; } ;


 int IB_7220_SERDES ;
 int IB_MPREG5 ;
 int IB_MPREG6 ;
 unsigned long long QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR ;
 int epb_access (struct qib_devdata*,int ,int) ;
 int kr_hwerrmask ;
 int kr_hwerrstatus ;
 int kr_ibserdesctrl ;
 int kr_scratch ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 unsigned long long qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_resync_ibepb (struct qib_devdata*) ;
 int qib_sd7220_clr_ibpar (struct qib_devdata*) ;
 int qib_sd7220_reg_mod (struct qib_devdata*,int ,int ,int,int) ;
 int qib_write_kreg (struct qib_devdata*,int ,unsigned long long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int qib_ibsd_reset(struct qib_devdata *dd, int assert_rst)
{
 u64 rst_val;
 int ret = 0;
 unsigned long flags;

 rst_val = qib_read_kreg64(dd, kr_ibserdesctrl);
 if (assert_rst) {




  spin_lock_irqsave(&dd->cspec->sdepb_lock, flags);
  epb_access(dd, IB_7220_SERDES, 1);
  rst_val |= 1ULL;

  qib_write_kreg(dd, kr_hwerrmask,
          dd->cspec->hwerrmask &
          ~QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR);
  qib_write_kreg(dd, kr_ibserdesctrl, rst_val);

  qib_read_kreg32(dd, kr_scratch);
  udelay(2);

  epb_access(dd, IB_7220_SERDES, -1);
  spin_unlock_irqrestore(&dd->cspec->sdepb_lock, flags);
 } else {







  u64 val;
  rst_val &= ~(1ULL);
  qib_write_kreg(dd, kr_hwerrmask,
          dd->cspec->hwerrmask &
          ~QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR);

  ret = qib_resync_ibepb(dd);
  if (ret < 0)
   qib_dev_err(dd, "unable to re-sync IB EPB\n");


  ret = qib_sd7220_reg_mod(dd, IB_7220_SERDES, IB_MPREG5, 1, 1);
  if (ret < 0)
   goto bail;

  ret = qib_sd7220_reg_mod(dd, IB_7220_SERDES, IB_MPREG6, 0x80,
   0x80);
  if (ret < 0) {
   qib_dev_err(dd, "Failed to set WDOG disable\n");
   goto bail;
  }
  qib_write_kreg(dd, kr_ibserdesctrl, rst_val);

  qib_read_kreg32(dd, kr_scratch);
  udelay(1);

  qib_sd7220_clr_ibpar(dd);
  val = qib_read_kreg64(dd, kr_hwerrstatus);
  if (val & QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR) {
   qib_dev_err(dd, "IBUC Parity still set after RST\n");
   dd->cspec->hwerrmask &=
    ~QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR;
  }
  qib_write_kreg(dd, kr_hwerrmask,
   dd->cspec->hwerrmask);
 }

bail:
 return ret;
}
