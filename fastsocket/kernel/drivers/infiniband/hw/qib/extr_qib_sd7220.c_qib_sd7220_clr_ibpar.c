
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int IB_7220_SERDES ;
 int IB_MPREG6 ;
 int QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR ;
 int UC_PAR_CLR_D ;
 int UC_PAR_CLR_M ;
 int kr_hwerrclear ;
 int kr_scratch ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 int qib_sd7220_reg_mod (struct qib_devdata*,int ,int ,int ,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;
 int udelay (int) ;

void qib_sd7220_clr_ibpar(struct qib_devdata *dd)
{
 int ret;


 ret = qib_sd7220_reg_mod(dd, IB_7220_SERDES, IB_MPREG6,
  UC_PAR_CLR_D, UC_PAR_CLR_M);
 if (ret < 0) {
  qib_dev_err(dd, "Failed clearing IBSerDes Parity err\n");
  goto bail;
 }
 ret = qib_sd7220_reg_mod(dd, IB_7220_SERDES, IB_MPREG6, 0,
  UC_PAR_CLR_M);

 qib_read_kreg32(dd, kr_scratch);
 udelay(4);
 qib_write_kreg(dd, kr_hwerrclear,
  QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR);
 qib_read_kreg32(dd, kr_scratch);
bail:
 return;
}
