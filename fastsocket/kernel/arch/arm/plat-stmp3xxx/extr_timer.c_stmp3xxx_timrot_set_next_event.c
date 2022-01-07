
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ HW_TIMROT_TIMCOUNT0 ;
 scalar_t__ REGS_TIMROT_BASE ;
 int __raw_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int
stmp3xxx_timrot_set_next_event(unsigned long delta,
  struct clock_event_device *dev)
{

 __raw_writel(delta, REGS_TIMROT_BASE + HW_TIMROT_TIMCOUNT0);
 return 0;
}
