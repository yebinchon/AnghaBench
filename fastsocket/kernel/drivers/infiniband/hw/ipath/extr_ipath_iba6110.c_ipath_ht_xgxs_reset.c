
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ipath_devdata {int ipath_control; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int kr_control; int kr_xgxsconfig; int kr_scratch; } ;


 int INFINIPATH_C_LINKENABLE ;
 int INFINIPATH_XGXS_RESET ;
 int ipath_read_kreg32 (struct ipath_devdata*,int ) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int) ;

__attribute__((used)) static void ipath_ht_xgxs_reset(struct ipath_devdata *dd)
{
 u64 val, prev_val;

 prev_val = ipath_read_kreg64(dd, dd->ipath_kregs->kr_xgxsconfig);
 val = prev_val | INFINIPATH_XGXS_RESET;
 prev_val &= ~INFINIPATH_XGXS_RESET;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_control,
    dd->ipath_control & ~INFINIPATH_C_LINKENABLE);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_xgxsconfig, val);
 ipath_read_kreg32(dd, dd->ipath_kregs->kr_scratch);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_xgxsconfig, prev_val);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_control,
    dd->ipath_control);
}
