
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {scalar_t__ ipath_int_counter; int ipath_intrchk_timer; TYPE_1__* pcidev; int (* ipath_f_intr_fallback ) (struct ipath_devdata*) ;} ;
struct TYPE_2__ {int dev; } ;


 int HZ ;
 int VERBOSE ;
 int dev_err (int *,char*) ;
 int ipath_cdbg (int ,char*,scalar_t__) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int stub1 (struct ipath_devdata*) ;

__attribute__((used)) static void verify_interrupt(unsigned long opaque)
{
 struct ipath_devdata *dd = (struct ipath_devdata *) opaque;

 if (!dd)
  return;





 if (dd->ipath_int_counter == 0) {
  if (!dd->ipath_f_intr_fallback(dd))
   dev_err(&dd->pcidev->dev, "No interrupts detected, "
    "not usable.\n");
  else
   mod_timer(&dd->ipath_intrchk_timer, jiffies + HZ/2);
 } else
  ipath_cdbg(VERBOSE, "%u interrupts at timer check\n",
   dd->ipath_int_counter);
}
