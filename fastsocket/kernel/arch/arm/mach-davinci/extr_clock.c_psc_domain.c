
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; } ;


 int DAVINCI_GPSC_ARMDOMAIN ;
 int DAVINCI_GPSC_DSPDOMAIN ;
 int PSC_DSP ;

__attribute__((used)) static unsigned psc_domain(struct clk *clk)
{
 return (clk->flags & PSC_DSP)
  ? DAVINCI_GPSC_DSPDOMAIN
  : DAVINCI_GPSC_ARMDOMAIN;
}
