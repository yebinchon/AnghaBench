
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timeval {int tv_sec; } ;


 int do_gettimeofday (struct timeval*) ;

__attribute__((used)) static u64
bfa_get_log_time(void)
{
 u64 system_time = 0;
 struct timeval tv;
 do_gettimeofday(&tv);


 system_time = tv.tv_sec;
 return system_time;
}
