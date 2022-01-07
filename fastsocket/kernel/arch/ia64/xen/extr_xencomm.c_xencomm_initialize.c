
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KERNEL_START ;
 scalar_t__ ia64_tpa (scalar_t__) ;
 int is_xencomm_initialized ;
 scalar_t__ kernel_virtual_offset ;

void
xencomm_initialize(void)
{
 kernel_virtual_offset = KERNEL_START - ia64_tpa(KERNEL_START);
 is_xencomm_initialized = 1;
}
