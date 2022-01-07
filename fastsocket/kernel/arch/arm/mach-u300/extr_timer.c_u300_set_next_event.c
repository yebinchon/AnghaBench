
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ U300_TIMER_APP_DGPT1 ;
 unsigned long U300_TIMER_APP_DGPT1_TIMER_DISABLE ;
 scalar_t__ U300_TIMER_APP_EGPT1 ;
 unsigned long U300_TIMER_APP_EGPT1_TIMER_ENABLE ;
 scalar_t__ U300_TIMER_APP_GPT1IE ;
 unsigned long U300_TIMER_APP_GPT1IE_IRQ_DISABLE ;
 unsigned long U300_TIMER_APP_GPT1IE_IRQ_ENABLE ;
 scalar_t__ U300_TIMER_APP_GPT1TC ;
 scalar_t__ U300_TIMER_APP_RGPT1 ;
 unsigned long U300_TIMER_APP_RGPT1_TIMER_RESET ;
 scalar_t__ U300_TIMER_APP_SGPT1M ;
 unsigned long U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT ;
 scalar_t__ U300_TIMER_APP_VBASE ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int u300_set_next_event(unsigned long cycles,
          struct clock_event_device *evt)

{

 writel(U300_TIMER_APP_GPT1IE_IRQ_DISABLE,
        U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);

 writel(U300_TIMER_APP_DGPT1_TIMER_DISABLE,
        U300_TIMER_APP_VBASE + U300_TIMER_APP_DGPT1);

 writel(U300_TIMER_APP_RGPT1_TIMER_RESET,
        U300_TIMER_APP_VBASE + U300_TIMER_APP_RGPT1);

 writel(cycles, U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1TC);




 writel(U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT,
        U300_TIMER_APP_VBASE + U300_TIMER_APP_SGPT1M);

 writel(U300_TIMER_APP_GPT1IE_IRQ_ENABLE,
        U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);

 writel(U300_TIMER_APP_EGPT1_TIMER_ENABLE,
        U300_TIMER_APP_VBASE + U300_TIMER_APP_EGPT1);
 return 0;
}
