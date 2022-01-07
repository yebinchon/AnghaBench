
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int TSC_OFFSET ;
 int rdtscll (scalar_t__) ;
 scalar_t__ vmcs_read64 (int ) ;

__attribute__((used)) static u64 guest_read_tsc(void)
{
 u64 host_tsc, tsc_offset;

 rdtscll(host_tsc);
 tsc_offset = vmcs_read64(TSC_OFFSET);
 return host_tsc + tsc_offset;
}
