
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_sdma_vl15_timer; int ipath_sdma_vl15_count; } ;


 int HZ ;
 scalar_t__ atomic_dec_return (int *) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void vl15_watchdog_deq(struct ipath_devdata *dd)
{

 if (atomic_dec_return(&dd->ipath_sdma_vl15_count) != 0) {
  unsigned long interval = (HZ + 19) / 20;
  mod_timer(&dd->ipath_sdma_vl15_timer, jiffies + interval);
 } else {
  del_timer(&dd->ipath_sdma_vl15_timer);
 }
}
