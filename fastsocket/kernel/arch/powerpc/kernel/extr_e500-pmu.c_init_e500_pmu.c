
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oprofile_cpu_type; } ;


 int ENODEV ;
 TYPE_1__* cur_cpu_spec ;
 int e500_pmu ;
 int num_events ;
 int register_fsl_emb_pmu (int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int init_e500_pmu(void)
{
 if (!cur_cpu_spec->oprofile_cpu_type)
  return -ENODEV;

 if (!strcmp(cur_cpu_spec->oprofile_cpu_type, "ppc/e500mc"))
  num_events = 256;
 else if (strcmp(cur_cpu_spec->oprofile_cpu_type, "ppc/e500"))
  return -ENODEV;

 return register_fsl_emb_pmu(&e500_pmu);
}
