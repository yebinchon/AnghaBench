
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct x86_emulate_ops {scalar_t__ (* get_cpuid ) (int ,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;} ;
struct x86_emulate_ctxt {scalar_t__ mode; int vcpu; } ;


 scalar_t__ X86EMUL_CPUID_VENDOR_AMDisbetterI_ebx ;
 scalar_t__ X86EMUL_CPUID_VENDOR_AMDisbetterI_ecx ;
 scalar_t__ X86EMUL_CPUID_VENDOR_AMDisbetterI_edx ;
 scalar_t__ X86EMUL_CPUID_VENDOR_AuthenticAMD_ebx ;
 scalar_t__ X86EMUL_CPUID_VENDOR_AuthenticAMD_ecx ;
 scalar_t__ X86EMUL_CPUID_VENDOR_AuthenticAMD_edx ;
 scalar_t__ X86EMUL_CPUID_VENDOR_GenuineIntel_ebx ;
 scalar_t__ X86EMUL_CPUID_VENDOR_GenuineIntel_ecx ;
 scalar_t__ X86EMUL_CPUID_VENDOR_GenuineIntel_edx ;
 scalar_t__ X86EMUL_MODE_PROT64 ;
 scalar_t__ stub1 (int ,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static bool em_syscall_is_enabled(struct x86_emulate_ctxt *ctxt,
      struct x86_emulate_ops *ops)
{
 u32 eax, ebx, ecx, edx;





 if (ctxt->mode == X86EMUL_MODE_PROT64)
  return 1;

 eax = 0x00000000;
 ecx = 0x00000000;
 if (ops->get_cpuid(ctxt->vcpu, &eax, &ebx, &ecx, &edx)) {
  if (ebx == X86EMUL_CPUID_VENDOR_GenuineIntel_ebx &&
      ecx == X86EMUL_CPUID_VENDOR_GenuineIntel_ecx &&
      edx == X86EMUL_CPUID_VENDOR_GenuineIntel_edx)
   return 0;


      if (ebx == X86EMUL_CPUID_VENDOR_AuthenticAMD_ebx &&
      ecx == X86EMUL_CPUID_VENDOR_AuthenticAMD_ecx &&
      edx == X86EMUL_CPUID_VENDOR_AuthenticAMD_edx)
   return 1;


  if (ebx == X86EMUL_CPUID_VENDOR_AMDisbetterI_ebx &&
      ecx == X86EMUL_CPUID_VENDOR_AMDisbetterI_ecx &&
      edx == X86EMUL_CPUID_VENDOR_AMDisbetterI_edx)
   return 1;
 }


 return 0;
}
