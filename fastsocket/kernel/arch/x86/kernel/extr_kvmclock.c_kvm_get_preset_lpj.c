
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HZ ;
 int do_div (int,int ) ;
 unsigned long kvm_get_tsc_khz () ;
 int preset_lpj ;

__attribute__((used)) static void kvm_get_preset_lpj(void)
{
 unsigned long khz;
 u64 lpj;

 khz = kvm_get_tsc_khz();

 lpj = ((u64)khz * 1000);
 do_div(lpj, HZ);
 preset_lpj = lpj;
}
