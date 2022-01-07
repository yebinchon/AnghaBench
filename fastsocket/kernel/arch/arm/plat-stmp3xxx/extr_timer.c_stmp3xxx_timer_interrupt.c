
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int BM_TIMROT_TIMCTRLn_IRQ ;
 int BM_TIMROT_TIMCTRLn_IRQ_EN ;
 scalar_t__ HW_TIMROT_TIMCOUNT1 ;
 scalar_t__ HW_TIMROT_TIMCTRL0 ;
 scalar_t__ HW_TIMROT_TIMCTRL1 ;
 int IRQ_HANDLED ;
 scalar_t__ REGS_TIMROT_BASE ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int stmp3xxx_clearl (int,scalar_t__) ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t
stmp3xxx_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *c = dev_id;


 if (__raw_readl(REGS_TIMROT_BASE + HW_TIMROT_TIMCTRL0) &
   BM_TIMROT_TIMCTRLn_IRQ) {
  stmp3xxx_clearl(BM_TIMROT_TIMCTRLn_IRQ,
    REGS_TIMROT_BASE + HW_TIMROT_TIMCTRL0);
  c->event_handler(c);
 }


 else if (__raw_readl(REGS_TIMROT_BASE + HW_TIMROT_TIMCTRL1)
   & BM_TIMROT_TIMCTRLn_IRQ) {
  stmp3xxx_clearl(BM_TIMROT_TIMCTRLn_IRQ,
    REGS_TIMROT_BASE + HW_TIMROT_TIMCTRL1);
  stmp3xxx_clearl(BM_TIMROT_TIMCTRLn_IRQ_EN,
    REGS_TIMROT_BASE + HW_TIMROT_TIMCTRL1);
  __raw_writel(0xFFFF, REGS_TIMROT_BASE + HW_TIMROT_TIMCOUNT1);
 }

 return IRQ_HANDLED;
}
