
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int housekeeping; } ;
typedef TYPE_1__ amb_dev ;


 int HZ ;
 int fill_rx_pools (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void do_housekeeping (unsigned long arg) {
  amb_dev * dev = (amb_dev *) arg;




  fill_rx_pools (dev);
  mod_timer(&dev->housekeeping, jiffies + 10*HZ);

  return;
}
