
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_rtc_write ;
 int beat_hcall_norets (int ,int ) ;

__attribute__((used)) static inline s64 beat_rtc_write(u64 time_from_epoch)
{
 return beat_hcall_norets(HV_rtc_write, time_from_epoch);
}
