
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qib_devdata {int flags; TYPE_1__* cspec; int pcidev; } ;
struct TYPE_2__ {unsigned long errormask; unsigned long hwerrmask; } ;


 int QIB_INITTED ;
 int QLOGIC_IB_C_FREEZEMODE ;
 int kr_control ;
 int kr_errclear ;
 int kr_errmask ;
 int kr_hwerrclear ;
 int kr_hwerrstatus ;
 int kr_intclear ;
 int qib_devinfo (int ,char*,int,unsigned long,unsigned long,int,unsigned long) ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 unsigned long qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,unsigned long long) ;

__attribute__((used)) static void qib_chk_6120_errormask(struct qib_devdata *dd)
{
 static u32 fixed;
 u32 ctrl;
 unsigned long errormask;
 unsigned long hwerrs;

 if (!dd->cspec->errormask || !(dd->flags & QIB_INITTED))
  return;

 errormask = qib_read_kreg64(dd, kr_errmask);

 if (errormask == dd->cspec->errormask)
  return;
 fixed++;

 hwerrs = qib_read_kreg64(dd, kr_hwerrstatus);
 ctrl = qib_read_kreg32(dd, kr_control);

 qib_write_kreg(dd, kr_errmask,
  dd->cspec->errormask);

 if ((hwerrs & dd->cspec->hwerrmask) ||
     (ctrl & QLOGIC_IB_C_FREEZEMODE)) {
  qib_write_kreg(dd, kr_hwerrclear, 0ULL);
  qib_write_kreg(dd, kr_errclear, 0ULL);

  qib_write_kreg(dd, kr_intclear, 0ULL);
  qib_devinfo(dd->pcidev,
    "errormask fixed(%u) %lx->%lx, ctrl %x hwerr %lx\n",
    fixed, errormask, (unsigned long)dd->cspec->errormask,
    ctrl, hwerrs);
 }
}
