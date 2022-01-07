
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int MCFPIT_PCSR ;
 int MCFPIT_PCSR_CLK64 ;
 int MCFPIT_PCSR_DISABLE ;
 int MCFPIT_PCSR_EN ;
 int MCFPIT_PCSR_OVW ;
 int MCFPIT_PCSR_PIE ;
 int MCFPIT_PCSR_RLD ;
 int MCFPIT_PMR ;
 int PIT_CYCLES_PER_JIFFY ;
 int TA (int ) ;
 int __raw_writew (int,int ) ;

__attribute__((used)) static void init_cf_pit_timer(enum clock_event_mode mode,
                             struct clock_event_device *evt)
{
 switch (mode) {
 case 131:

  __raw_writew(MCFPIT_PCSR_DISABLE, TA(MCFPIT_PCSR));
  __raw_writew(PIT_CYCLES_PER_JIFFY, TA(MCFPIT_PMR));
  __raw_writew(MCFPIT_PCSR_EN | MCFPIT_PCSR_PIE | MCFPIT_PCSR_OVW | MCFPIT_PCSR_RLD | MCFPIT_PCSR_CLK64, TA(MCFPIT_PCSR));


  break;

 case 129:
 case 128:

  __raw_writew(MCFPIT_PCSR_DISABLE, TA(MCFPIT_PCSR));
  break;

 case 132:

  __raw_writew(MCFPIT_PCSR_DISABLE, TA(MCFPIT_PCSR));
  __raw_writew(MCFPIT_PCSR_EN | MCFPIT_PCSR_PIE | MCFPIT_PCSR_OVW | MCFPIT_PCSR_CLK64, TA(MCFPIT_PCSR));


  break;

 case 130:

  break;
 }
}
