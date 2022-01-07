
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int oprofile_cpu_type; } ;
struct TYPE_4__ {int flags; } ;


 int ENODEV ;
 int PPMU_SIAR_VALID ;
 int PVR_POWER7p ;
 scalar_t__ __is_processor (int ) ;
 TYPE_3__* cur_cpu_spec ;
 TYPE_1__ power7_pmu ;
 int register_power_pmu (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int init_power7_pmu(void)
{
 if (!cur_cpu_spec->oprofile_cpu_type ||
     strcmp(cur_cpu_spec->oprofile_cpu_type, "ppc64/power7"))
  return -ENODEV;

 if (__is_processor(PVR_POWER7p))
  power7_pmu.flags |= PPMU_SIAR_VALID;

 return register_power_pmu(&power7_pmu);
}
