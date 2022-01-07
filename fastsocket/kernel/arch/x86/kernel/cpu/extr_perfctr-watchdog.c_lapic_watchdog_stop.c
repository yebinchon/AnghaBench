
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* stop ) () ;} ;


 int stub1 () ;
 TYPE_1__* wd_ops ;

void lapic_watchdog_stop(void)
{
 if (wd_ops)
  wd_ops->stop();
}
