
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __vmx_disable_intercept_for_msr (int ,int ) ;
 int vmx_msr_bitmap_legacy ;
 int vmx_msr_bitmap_longmode ;

__attribute__((used)) static void vmx_disable_intercept_for_msr(u32 msr, bool longmode_only)
{
 if (!longmode_only)
  __vmx_disable_intercept_for_msr(vmx_msr_bitmap_legacy, msr);
 __vmx_disable_intercept_for_msr(vmx_msr_bitmap_longmode, msr);
}
