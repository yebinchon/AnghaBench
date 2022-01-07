
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ipath_devdata {int ipath_flags; int verbs_timer; int ipath_gpio_mask; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int kr_gpio_mask; } ;


 int IPATH_GPIO_INTR ;
 int IPATH_GPIO_PORT0_BIT ;
 int del_timer_sync (int *) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int ) ;

__attribute__((used)) static int disable_timer(struct ipath_devdata *dd)
{

 if (dd->ipath_flags & IPATH_GPIO_INTR) {

  dd->ipath_gpio_mask &= ~((u64) (1 << IPATH_GPIO_PORT0_BIT));
  ipath_write_kreg(dd, dd->ipath_kregs->kr_gpio_mask,
     dd->ipath_gpio_mask);




 }

 del_timer_sync(&dd->verbs_timer);

 return 0;
}
