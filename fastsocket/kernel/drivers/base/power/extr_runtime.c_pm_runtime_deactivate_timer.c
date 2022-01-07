
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ timer_expires; int suspend_timer; } ;
struct device {TYPE_1__ power; } ;


 int del_timer (int *) ;

__attribute__((used)) static void pm_runtime_deactivate_timer(struct device *dev)
{
 if (dev->power.timer_expires > 0) {
  del_timer(&dev->power.suspend_timer);
  dev->power.timer_expires = 0;
 }
}
