
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct compat_timeval {int tv_usec; int tv_sec; } ;


 int NSEC_PER_SEC ;
 int NSEC_PER_USEC ;
 int TICK_NSEC ;
 int div_u64_rem (int,int ,int*) ;

__attribute__((used)) static __inline__ void
jiffies_to_compat_timeval(unsigned long jiffies, struct compat_timeval *value)
{




 u64 nsec = (u64)jiffies * TICK_NSEC;
 u32 rem;
 value->tv_sec = div_u64_rem(nsec, NSEC_PER_SEC, &rem);
 value->tv_usec = rem / NSEC_PER_USEC;
}
