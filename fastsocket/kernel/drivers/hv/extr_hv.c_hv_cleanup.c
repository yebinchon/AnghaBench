
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union hv_x64_msr_hypercall_contents {scalar_t__ as_uint64; } ;
struct TYPE_2__ {int * hypercall_page; } ;


 int HV_X64_MSR_GUEST_OS_ID ;
 int HV_X64_MSR_HYPERCALL ;
 TYPE_1__ hv_context ;
 int vfree (int *) ;
 int wrmsrl (int ,scalar_t__) ;

void hv_cleanup(void)
{
 union hv_x64_msr_hypercall_contents hypercall_msr;


 wrmsrl(HV_X64_MSR_GUEST_OS_ID, 0);

 if (hv_context.hypercall_page) {
  hypercall_msr.as_uint64 = 0;
  wrmsrl(HV_X64_MSR_HYPERCALL, hypercall_msr.as_uint64);
  vfree(hv_context.hypercall_page);
  hv_context.hypercall_page = ((void*)0);
 }
}
