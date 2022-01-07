
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platform; } ;


 int ENOTSUPP ;
 TYPE_1__* cur_cpu_spec ;
 scalar_t__ strcmp (int ,char*) ;

int kvmppc_core_check_processor_compat(void)
{
 int r;

 if (strcmp(cur_cpu_spec->platform, "ppc440") == 0)
  r = 0;
 else
  r = -ENOTSUPP;

 return r;
}
