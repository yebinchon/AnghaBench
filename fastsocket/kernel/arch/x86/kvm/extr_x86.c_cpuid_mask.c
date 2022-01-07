
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int * x86_capability; } ;
struct TYPE_3__ {int * x86_capability; } ;


 int NCAPINTS ;
 TYPE_2__ boot_cpu_data ;
 TYPE_1__ boot_cpu_data_rh ;

__attribute__((used)) static void cpuid_mask(u32 *word, int wordnum)
{
 if (wordnum < NCAPINTS)
  *word &= boot_cpu_data.x86_capability[wordnum];
 else
  *word &= boot_cpu_data_rh.x86_capability[wordnum - NCAPINTS];
}
