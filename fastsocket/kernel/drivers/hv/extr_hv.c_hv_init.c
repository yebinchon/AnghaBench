
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union hv_x64_msr_hypercall_contents {int enable; scalar_t__ as_uint64; int guest_physical_address; } ;
typedef int __u8 ;
typedef int __u16 ;
struct TYPE_2__ {void* hypercall_page; scalar_t__ guestid; int event_dpc; int vp_index; int synic_message_page; int synic_event_page; } ;


 int ENOTSUPP ;
 int GFP_KERNEL ;
 int HV_X64_MSR_GUEST_OS_ID ;
 int HV_X64_MSR_HYPERCALL ;
 int LINUX_VERSION_CODE ;
 int NR_CPUS ;
 int PAGE_KERNEL_EXEC ;
 int PAGE_SIZE ;
 void* __vmalloc (int ,int ,int ) ;
 scalar_t__ generate_guest_id (int,int ,int ) ;
 TYPE_1__ hv_context ;
 int memset (int ,int ,int) ;
 int query_hypervisor_info () ;
 int rdmsrl (int ,scalar_t__) ;
 int vfree (void*) ;
 int vmalloc_to_pfn (void*) ;
 int wrmsrl (int ,scalar_t__) ;

int hv_init(void)
{
 int max_leaf;
 union hv_x64_msr_hypercall_contents hypercall_msr;
 void *virtaddr = ((void*)0);
 __u8 d1 = 0x20;
 __u16 d2 = 0;

 memset(hv_context.synic_event_page, 0, sizeof(void *) * NR_CPUS);
 memset(hv_context.synic_message_page, 0,
        sizeof(void *) * NR_CPUS);
 memset(hv_context.vp_index, 0,
        sizeof(int) * NR_CPUS);
 memset(hv_context.event_dpc, 0,
        sizeof(void *) * NR_CPUS);

 max_leaf = query_hypervisor_info();




 hv_context.guestid = generate_guest_id(d1, LINUX_VERSION_CODE, d2);
 wrmsrl(HV_X64_MSR_GUEST_OS_ID, hv_context.guestid);


 rdmsrl(HV_X64_MSR_HYPERCALL, hypercall_msr.as_uint64);

 virtaddr = __vmalloc(PAGE_SIZE, GFP_KERNEL, PAGE_KERNEL_EXEC);

 if (!virtaddr)
  goto cleanup;

 hypercall_msr.enable = 1;

 hypercall_msr.guest_physical_address = vmalloc_to_pfn(virtaddr);
 wrmsrl(HV_X64_MSR_HYPERCALL, hypercall_msr.as_uint64);


 hypercall_msr.as_uint64 = 0;
 rdmsrl(HV_X64_MSR_HYPERCALL, hypercall_msr.as_uint64);

 if (!hypercall_msr.enable)
  goto cleanup;

 hv_context.hypercall_page = virtaddr;

 return 0;

cleanup:
 if (virtaddr) {
  if (hypercall_msr.enable) {
   hypercall_msr.as_uint64 = 0;
   wrmsrl(HV_X64_MSR_HYPERCALL, hypercall_msr.as_uint64);
  }

  vfree(virtaddr);
 }

 return -ENOTSUPP;
}
