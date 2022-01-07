
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMX_EPT_EXTENT_GLOBAL ;
 int __invept (int ,int ,int ) ;
 scalar_t__ cpu_has_vmx_invept_global () ;

__attribute__((used)) static inline void ept_sync_global(void)
{
 if (cpu_has_vmx_invept_global())
  __invept(VMX_EPT_EXTENT_GLOBAL, 0, 0);
}
