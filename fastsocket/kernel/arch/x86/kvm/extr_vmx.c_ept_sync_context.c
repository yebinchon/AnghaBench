
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int VMX_EPT_EXTENT_CONTEXT ;
 int __invept (int ,int ,int ) ;
 scalar_t__ cpu_has_vmx_invept_context () ;
 scalar_t__ enable_ept ;
 int ept_sync_global () ;

__attribute__((used)) static inline void ept_sync_context(u64 eptp)
{
 if (enable_ept) {
  if (cpu_has_vmx_invept_context())
   __invept(VMX_EPT_EXTENT_CONTEXT, eptp, 0);
  else
   ept_sync_global();
 }
}
