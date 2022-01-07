
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MCFPIT_PCSR ;
 int MCFPIT_PCSR_PIF ;
 scalar_t__ PIT_CYCLES_PER_JIFFY ;
 int TA (int ) ;
 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;
 struct clock_event_device cf_pit_clockevent ;
 int pit_cnt ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t pit_tick(int irq, void *dummy)
{
 struct clock_event_device *evt = &cf_pit_clockevent;
 u16 pcsr;


 pcsr = __raw_readw(TA(MCFPIT_PCSR));
 __raw_writew(pcsr | MCFPIT_PCSR_PIF, TA(MCFPIT_PCSR));

 pit_cnt += PIT_CYCLES_PER_JIFFY;
 evt->event_handler(evt);
 return IRQ_HANDLED;
}
