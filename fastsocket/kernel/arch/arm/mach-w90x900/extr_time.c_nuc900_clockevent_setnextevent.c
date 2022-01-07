
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 unsigned int COUNTEN ;
 unsigned int INTEN ;
 unsigned int PRESCALE ;
 int REG_TCSR0 ;
 int REG_TICR0 ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

__attribute__((used)) static int nuc900_clockevent_setnextevent(unsigned long evt,
  struct clock_event_device *clk)
{
 unsigned int val;

 __raw_writel(evt, REG_TICR0);

 val = __raw_readl(REG_TCSR0);
 val |= (COUNTEN | INTEN | PRESCALE);
 __raw_writel(val, REG_TCSR0);

 return 0;
}
