
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct marvel_rtc_time {int retval; struct rtc_time* time; } ;


 int __set_rtc_time (struct rtc_time*) ;
 scalar_t__ boot_cpuid ;
 int smp_call_function_single (scalar_t__,int ,struct marvel_rtc_time*,int) ;
 scalar_t__ smp_processor_id () ;
 int smp_set_rtc_time ;

__attribute__((used)) static int
marvel_set_rtc_time(struct rtc_time *time)
{
 return __set_rtc_time(time);
}
