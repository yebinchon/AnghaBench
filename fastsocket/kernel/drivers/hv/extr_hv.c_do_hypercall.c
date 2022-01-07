
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {void* hypercall_page; } ;


 TYPE_1__ hv_context ;
 int virt_to_phys (void*) ;

__attribute__((used)) static u64 do_hypercall(u64 control, void *input, void *output)
{
 u32 control_hi = control >> 32;
 u32 control_lo = control & 0xFFFFFFFF;
 u32 hv_status_hi = 1;
 u32 hv_status_lo = 1;
 u64 input_address = (input) ? virt_to_phys(input) : 0;
 u32 input_address_hi = input_address >> 32;
 u32 input_address_lo = input_address & 0xFFFFFFFF;
 u64 output_address = (output) ? virt_to_phys(output) : 0;
 u32 output_address_hi = output_address >> 32;
 u32 output_address_lo = output_address & 0xFFFFFFFF;
 void *hypercall_page = hv_context.hypercall_page;

 __asm__ __volatile__ ("call *%8" : "=d"(hv_status_hi),
         "=a"(hv_status_lo) : "d" (control_hi),
         "a" (control_lo), "b" (input_address_hi),
         "c" (input_address_lo), "D"(output_address_hi),
         "S"(output_address_lo), "m" (hypercall_page));

 return hv_status_lo | ((u64)hv_status_hi << 32);

}
