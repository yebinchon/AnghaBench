
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ept; } ;


 int VMX_EPT_EXTENT_GLOBAL_BIT ;
 TYPE_1__ vmx_capability ;

__attribute__((used)) static inline int cpu_has_vmx_invept_global(void)
{
 return !!(vmx_capability.ept & VMX_EPT_EXTENT_GLOBAL_BIT);
}
