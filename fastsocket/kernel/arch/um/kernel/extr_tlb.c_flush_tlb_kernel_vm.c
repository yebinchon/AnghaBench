
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int end_vm ;
 int flush_tlb_kernel_range_common (int ,int ) ;
 int start_vm ;

void flush_tlb_kernel_vm(void)
{
 flush_tlb_kernel_range_common(start_vm, end_vm);
}
