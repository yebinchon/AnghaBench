
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int TICKS_PER_JIFFY ;
 scalar_t__ U300_TIMER_APP_DGPT1 ;
 int U300_TIMER_APP_DGPT1_TIMER_DISABLE ;
 scalar_t__ U300_TIMER_APP_EGPT1 ;
 int U300_TIMER_APP_EGPT1_TIMER_ENABLE ;
 scalar_t__ U300_TIMER_APP_GPT1IE ;
 int U300_TIMER_APP_GPT1IE_IRQ_DISABLE ;
 int U300_TIMER_APP_GPT1IE_IRQ_ENABLE ;
 scalar_t__ U300_TIMER_APP_GPT1TC ;
 scalar_t__ U300_TIMER_APP_SGPT1M ;
 int U300_TIMER_APP_SGPT1M_MODE_CONTINUOUS ;
 int U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT ;
 scalar_t__ U300_TIMER_APP_VBASE ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void u300_set_mode(enum clock_event_mode mode,
     struct clock_event_device *evt)
{
 switch (mode) {
 case 131:

  writel(U300_TIMER_APP_GPT1IE_IRQ_DISABLE,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);

  writel(U300_TIMER_APP_DGPT1_TIMER_DISABLE,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_DGPT1);




  writel(TICKS_PER_JIFFY,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1TC);




  writel(U300_TIMER_APP_SGPT1M_MODE_CONTINUOUS,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_SGPT1M);

  writel(U300_TIMER_APP_GPT1IE_IRQ_ENABLE,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);

  writel(U300_TIMER_APP_EGPT1_TIMER_ENABLE,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_EGPT1);
  break;
 case 132:







  writel(U300_TIMER_APP_GPT1IE_IRQ_DISABLE,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);

  writel(U300_TIMER_APP_DGPT1_TIMER_DISABLE,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_DGPT1);




  writel(0xFFFFFFFF, U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1TC);

  writel(U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_SGPT1M);

  writel(U300_TIMER_APP_GPT1IE_IRQ_ENABLE,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);

  writel(U300_TIMER_APP_EGPT1_TIMER_ENABLE,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_EGPT1);
  break;
 case 128:
 case 129:

  writel(U300_TIMER_APP_GPT1IE_IRQ_DISABLE,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);

  writel(U300_TIMER_APP_DGPT1_TIMER_DISABLE,
         U300_TIMER_APP_VBASE + U300_TIMER_APP_DGPT1);
  break;
 case 130:

  break;
 }
}
