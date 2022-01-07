
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_based_exec_ctrl; } ;


 int CPU_BASED_USE_MSR_BITMAPS ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline int cpu_has_vmx_msr_bitmap(void)
{
 return vmcs_config.cpu_based_exec_ctrl & CPU_BASED_USE_MSR_BITMAPS;
}
