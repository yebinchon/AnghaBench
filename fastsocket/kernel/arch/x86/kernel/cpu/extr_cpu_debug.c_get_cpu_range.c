
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int flag; unsigned int min; unsigned int max; } ;


 TYPE_1__* cpu_reg_range ;

__attribute__((used)) static unsigned get_cpu_range(unsigned cpu, unsigned *min, unsigned *max,
         int index, unsigned flag)
{
 if (cpu_reg_range[index].flag == flag) {
  *min = cpu_reg_range[index].min;
  *max = cpu_reg_range[index].max;
 } else
  *max = 0;

 return *max;
}
