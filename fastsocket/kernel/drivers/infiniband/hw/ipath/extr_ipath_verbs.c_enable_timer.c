
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {unsigned long data; scalar_t__ expires; int function; } ;
struct ipath_devdata {int ipath_flags; int ipath_gpio_mask; TYPE_2__ verbs_timer; TYPE_1__* ipath_kregs; } ;
struct TYPE_4__ {int kr_gpio_mask; int kr_debugportselect; } ;


 int IPATH_GPIO_INTR ;
 int IPATH_GPIO_PORT0_BIT ;
 int __verbs_timer ;
 int add_timer (TYPE_2__*) ;
 int init_timer (TYPE_2__*) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int) ;
 scalar_t__ jiffies ;

__attribute__((used)) static int enable_timer(struct ipath_devdata *dd)
{
 if (dd->ipath_flags & IPATH_GPIO_INTR) {
  ipath_write_kreg(dd, dd->ipath_kregs->kr_debugportselect,
     0x2074076542310ULL);

  dd->ipath_gpio_mask |= (u64) (1 << IPATH_GPIO_PORT0_BIT);
  ipath_write_kreg(dd, dd->ipath_kregs->kr_gpio_mask,
     dd->ipath_gpio_mask);
 }

 init_timer(&dd->verbs_timer);
 dd->verbs_timer.function = __verbs_timer;
 dd->verbs_timer.data = (unsigned long)dd;
 dd->verbs_timer.expires = jiffies + 1;
 add_timer(&dd->verbs_timer);

 return 0;
}
