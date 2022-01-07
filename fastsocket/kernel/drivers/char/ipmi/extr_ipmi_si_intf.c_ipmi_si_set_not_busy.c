
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; } ;



__attribute__((used)) static inline void ipmi_si_set_not_busy(struct timespec *ts)
{
       ts->tv_nsec = -1;
}
