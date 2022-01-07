
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coh901331_port {int rtc; int clk; scalar_t__ virtbase; } ;
typedef int irqreturn_t ;


 scalar_t__ COH901331_IRQ_EVENT ;
 scalar_t__ COH901331_IRQ_MASK ;
 int IRQ_HANDLED ;
 int RTC_AF ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int rtc_update_irq (int ,int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t coh901331_interrupt(int irq, void *data)
{
 struct coh901331_port *rtap = data;

 clk_enable(rtap->clk);

 writel(1, rtap->virtbase + COH901331_IRQ_EVENT);







 writel(0, rtap->virtbase + COH901331_IRQ_MASK);
 clk_disable(rtap->clk);


 rtc_update_irq(rtap->rtc, 1, RTC_AF);

 return IRQ_HANDLED;
}
