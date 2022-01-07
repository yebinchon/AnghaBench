
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __clear_bit (int,unsigned long*) ;
 int cpu_has_vmx_msr_bitmap () ;

__attribute__((used)) static void __vmx_disable_intercept_for_msr(unsigned long *msr_bitmap, u32 msr)
{
 int f = sizeof(unsigned long);

 if (!cpu_has_vmx_msr_bitmap())
  return;






 if (msr <= 0x1fff) {
  __clear_bit(msr, msr_bitmap + 0x000 / f);
  __clear_bit(msr, msr_bitmap + 0x800 / f);
 } else if ((msr >= 0xc0000000) && (msr <= 0xc0001fff)) {
  msr &= 0x1fff;
  __clear_bit(msr, msr_bitmap + 0x400 / f);
  __clear_bit(msr, msr_bitmap + 0xc00 / f);
 }
}
