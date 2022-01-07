
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HSTIM_COUNTER ;
 int HSTIM_MATCH0 ;
 int LATCH ;
 int __raw_readl (int ) ;
 int tick_nsec ;

__attribute__((used)) static unsigned long pnx4008_gettimeoffset(void)
{
 u32 ticks_to_match =
     __raw_readl(HSTIM_MATCH0) - __raw_readl(HSTIM_COUNTER);
 u32 elapsed = LATCH - ticks_to_match;
 return (elapsed * (tick_nsec / 1000)) / LATCH;
}
