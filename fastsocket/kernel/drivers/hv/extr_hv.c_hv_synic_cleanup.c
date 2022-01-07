
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union hv_synic_sint {int masked; int as_uint64; } ;
union hv_synic_simp {int as_uint64; scalar_t__ base_simp_gpa; scalar_t__ simp_enabled; } ;
union hv_synic_siefp {int as_uint64; scalar_t__ base_siefp_gpa; scalar_t__ siefp_enabled; } ;
struct TYPE_2__ {scalar_t__* synic_event_page; scalar_t__* synic_message_page; int synic_initialized; } ;


 scalar_t__ HV_X64_MSR_SIEFP ;
 scalar_t__ HV_X64_MSR_SIMP ;
 scalar_t__ HV_X64_MSR_SINT0 ;
 scalar_t__ VMBUS_MESSAGE_SINT ;
 int free_page (unsigned long) ;
 TYPE_1__ hv_context ;
 int rdmsrl (scalar_t__,int ) ;
 int smp_processor_id () ;
 int wrmsrl (scalar_t__,int ) ;

void hv_synic_cleanup(void *arg)
{
 union hv_synic_sint shared_sint;
 union hv_synic_simp simp;
 union hv_synic_siefp siefp;
 int cpu = smp_processor_id();

 if (!hv_context.synic_initialized)
  return;

 rdmsrl(HV_X64_MSR_SINT0 + VMBUS_MESSAGE_SINT, shared_sint.as_uint64);

 shared_sint.masked = 1;



 wrmsrl(HV_X64_MSR_SINT0 + VMBUS_MESSAGE_SINT, shared_sint.as_uint64);

 rdmsrl(HV_X64_MSR_SIMP, simp.as_uint64);
 simp.simp_enabled = 0;
 simp.base_simp_gpa = 0;

 wrmsrl(HV_X64_MSR_SIMP, simp.as_uint64);

 rdmsrl(HV_X64_MSR_SIEFP, siefp.as_uint64);
 siefp.siefp_enabled = 0;
 siefp.base_siefp_gpa = 0;

 wrmsrl(HV_X64_MSR_SIEFP, siefp.as_uint64);

 free_page((unsigned long)hv_context.synic_message_page[cpu]);
 free_page((unsigned long)hv_context.synic_event_page[cpu]);
}
