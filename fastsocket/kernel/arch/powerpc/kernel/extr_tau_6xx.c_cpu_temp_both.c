
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int high; int low; } ;


 TYPE_1__* tau ;

u32 cpu_temp_both(unsigned long cpu)
{
 return ((tau[cpu].high << 16) | tau[cpu].low);
}
