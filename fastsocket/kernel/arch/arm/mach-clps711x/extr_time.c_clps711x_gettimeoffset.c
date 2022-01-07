
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LATCH ;
 int TC2D ;
 int clps_readl (int ) ;
 int tick_nsec ;

__attribute__((used)) static unsigned long clps711x_gettimeoffset(void)
{
 unsigned long hwticks;
 hwticks = LATCH - (clps_readl(TC2D) & 0xffff);
 return (hwticks * (tick_nsec / 1000)) / LATCH;
}
