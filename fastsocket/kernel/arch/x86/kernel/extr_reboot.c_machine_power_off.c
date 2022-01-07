
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* power_off ) () ;} ;


 TYPE_1__ machine_ops ;
 int stub1 () ;

void machine_power_off(void)
{
 machine_ops.power_off();
}
