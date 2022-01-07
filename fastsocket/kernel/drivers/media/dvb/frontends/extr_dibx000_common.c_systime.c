
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec {int tv_sec; int tv_nsec; } ;


 struct timespec current_kernel_time () ;

u32 systime(void)
{
    struct timespec t;

    t = current_kernel_time();
    return (t.tv_sec * 10000) + (t.tv_nsec / 100000);
}
