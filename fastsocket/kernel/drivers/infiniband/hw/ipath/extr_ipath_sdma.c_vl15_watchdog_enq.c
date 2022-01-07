
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct ipath_devdata {TYPE_1__ ipath_sdma_vl15_timer; int ipath_sdma_vl15_count; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 int atomic_inc_return (int *) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void vl15_watchdog_enq(struct ipath_devdata *dd)
{

 if (atomic_inc_return(&dd->ipath_sdma_vl15_count) == 1) {
  unsigned long interval = (HZ + 19) / 20;
  dd->ipath_sdma_vl15_timer.expires = jiffies + interval;
  add_timer(&dd->ipath_sdma_vl15_timer);
 }
}
