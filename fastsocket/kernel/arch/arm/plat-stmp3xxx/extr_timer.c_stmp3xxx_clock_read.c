
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 scalar_t__ HW_TIMROT_TIMCOUNT1 ;
 scalar_t__ REGS_TIMROT_BASE ;
 int __raw_readl (scalar_t__) ;

__attribute__((used)) static cycle_t stmp3xxx_clock_read(struct clocksource *cs)
{
 return ~((__raw_readl(REGS_TIMROT_BASE + HW_TIMROT_TIMCOUNT1)
    & 0xFFFF0000) >> 16);
}
