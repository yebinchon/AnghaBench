
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {scalar_t__ int_counter; int intrchk_timer; TYPE_1__* pcidev; int (* f_intr_fallback ) (struct qib_devdata*) ;} ;
struct TYPE_2__ {int dev; } ;


 int HZ ;
 int dev_err (int *,char*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int stub1 (struct qib_devdata*) ;

__attribute__((used)) static void verify_interrupt(unsigned long opaque)
{
 struct qib_devdata *dd = (struct qib_devdata *) opaque;

 if (!dd)
  return;





 if (dd->int_counter == 0) {
  if (!dd->f_intr_fallback(dd))
   dev_err(&dd->pcidev->dev,
    "No interrupts detected, not usable.\n");
  else
   mod_timer(&dd->intrchk_timer, jiffies + HZ/2);
 }
}
