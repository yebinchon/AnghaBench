
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oprofile_cpu_type; } ;


 int ENODEV ;
 TYPE_1__* cur_cpu_spec ;
 int ppc970_pmu ;
 int register_power_pmu (int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int init_ppc970_pmu(void)
{
 if (!cur_cpu_spec->oprofile_cpu_type ||
     (strcmp(cur_cpu_spec->oprofile_cpu_type, "ppc64/970")
      && strcmp(cur_cpu_spec->oprofile_cpu_type, "ppc64/970MP")))
  return -ENODEV;

 return register_power_pmu(&ppc970_pmu);
}
