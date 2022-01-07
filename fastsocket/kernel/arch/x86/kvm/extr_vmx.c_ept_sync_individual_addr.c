
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int gpa_t ;


 int VMX_EPT_EXTENT_INDIVIDUAL_ADDR ;
 int __invept (int ,int ,int ) ;
 scalar_t__ cpu_has_vmx_invept_individual_addr () ;
 scalar_t__ enable_ept ;
 int ept_sync_context (int ) ;

__attribute__((used)) static inline void ept_sync_individual_addr(u64 eptp, gpa_t gpa)
{
 if (enable_ept) {
  if (cpu_has_vmx_invept_individual_addr())
   __invept(VMX_EPT_EXTENT_INDIVIDUAL_ADDR,
     eptp, gpa);
  else
   ept_sync_context(eptp);
 }
}
