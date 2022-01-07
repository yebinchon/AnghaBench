
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {scalar_t__ ipath_intconfig; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int kr_interruptconfig; } ;


 int EINVAL ;
 int ipath_dev_err (struct ipath_devdata*,char*) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,scalar_t__) ;

__attribute__((used)) static int ipath_ht_intconfig(struct ipath_devdata *dd)
{
 int ret;

 if (dd->ipath_intconfig) {
  ipath_write_kreg(dd, dd->ipath_kregs->kr_interruptconfig,
     dd->ipath_intconfig);
  ret = 0;
 } else {
  ipath_dev_err(dd, "No interrupts enabled, couldn't setup "
         "interrupt address\n");
  ret = -EINVAL;
 }

 return ret;
}
