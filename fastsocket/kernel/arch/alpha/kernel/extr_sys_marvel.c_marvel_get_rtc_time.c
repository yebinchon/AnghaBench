
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct marvel_rtc_time {unsigned int retval; struct rtc_time* time; } ;


 unsigned int __get_rtc_time (struct rtc_time*) ;
 scalar_t__ boot_cpuid ;
 int smp_call_function_single (scalar_t__,int ,struct marvel_rtc_time*,int) ;
 int smp_get_rtc_time ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static unsigned int
marvel_get_rtc_time(struct rtc_time *time)
{
 return __get_rtc_time(time);
}
