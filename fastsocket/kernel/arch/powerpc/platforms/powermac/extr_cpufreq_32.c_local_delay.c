
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdelay (unsigned long) ;
 int msleep (unsigned long) ;
 scalar_t__ no_schedule ;

__attribute__((used)) static inline void local_delay(unsigned long ms)
{
 if (no_schedule)
  mdelay(ms);
 else
  msleep(ms);
}
