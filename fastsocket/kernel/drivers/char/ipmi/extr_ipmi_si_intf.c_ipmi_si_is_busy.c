
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; } ;



__attribute__((used)) static inline int ipmi_si_is_busy(struct timespec *ts)
{
       return ts->tv_nsec != -1;
}
