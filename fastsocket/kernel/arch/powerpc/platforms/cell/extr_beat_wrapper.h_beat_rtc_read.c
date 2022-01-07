
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_rtc_read ;
 int beat_hcall1 (int ,int *) ;

__attribute__((used)) static inline s64 beat_rtc_read(u64 *time_from_epoch)
{
 u64 dummy[1];
 s64 ret;

 ret = beat_hcall1(HV_rtc_read, dummy);
 *time_from_epoch = dummy[0];
 return ret;
}
