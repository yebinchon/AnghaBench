
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* missing_jiffy_timer_csr ;
 unsigned long next_jiffy_time ;
 unsigned long ticks_per_usec ;

unsigned long ixp2000_gettimeoffset (void)
{
  unsigned long offset;

 offset = next_jiffy_time - *missing_jiffy_timer_csr;

 return offset / ticks_per_usec;
}
