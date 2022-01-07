
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int kr_scratch; } ;


 int ipath_read_kreg32 (struct ipath_devdata*,int ) ;
 int rmb () ;

__attribute__((used)) static void i2c_wait_for_writes(struct ipath_devdata *dd)
{
 (void)ipath_read_kreg32(dd, dd->ipath_kregs->kr_scratch);
 rmb();
}
