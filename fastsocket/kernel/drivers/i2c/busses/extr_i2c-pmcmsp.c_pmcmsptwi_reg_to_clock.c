
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmcmsptwi_clock {int filter; int clock; } ;



__attribute__((used)) static inline void pmcmsptwi_reg_to_clock(
   u32 reg, struct pmcmsptwi_clock *clock)
{
 clock->filter = (reg >> 12) & 0xf;
 clock->clock = reg & 0x03ff;
}
