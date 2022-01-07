
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int flag; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 unsigned int CPU_TSS ;
 TYPE_1__* cpu_reg_range ;

__attribute__((used)) static int is_typeflag_valid(unsigned cpu, unsigned flag)
{
 int i;


 if (flag >= CPU_TSS)
  return 1;

 for (i = 0; i < ARRAY_SIZE(cpu_reg_range); i++) {
  if (cpu_reg_range[i].flag == flag)
   return 1;
 }


 return 0;
}
