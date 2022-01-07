
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int high; int low; } ;


 TYPE_1__* tau ;

int cpu_temp(unsigned long cpu)
{
 return ((tau[cpu].high + tau[cpu].low) / 2);
}
