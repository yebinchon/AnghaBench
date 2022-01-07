
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {unsigned long long ipath_control; unsigned long long ipath_errormask; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int kr_intclear; int kr_intmask; int kr_errormask; int kr_errorclear; int kr_hwerrclear; int kr_scratch; int kr_control; } ;


 unsigned long long E_SPKT_ERRS_IGNORE ;
 int ipath_cancel_sends (struct ipath_devdata*,int) ;
 int ipath_force_pio_avail_update (struct ipath_devdata*) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,unsigned long long) ;

void ipath_clear_freeze(struct ipath_devdata *dd)
{

 ipath_write_kreg(dd, dd->ipath_kregs->kr_errormask, 0ULL);


 ipath_write_kreg(dd, dd->ipath_kregs->kr_intmask, 0ULL);

 ipath_cancel_sends(dd, 1);


 ipath_write_kreg(dd, dd->ipath_kregs->kr_control,
    dd->ipath_control);
 ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);


 ipath_force_pio_avail_update(dd);







 ipath_write_kreg(dd, dd->ipath_kregs->kr_hwerrclear, 0ULL);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_errorclear,
  E_SPKT_ERRS_IGNORE);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_errormask,
  dd->ipath_errormask);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_intmask, -1LL);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_intclear, 0ULL);
}
