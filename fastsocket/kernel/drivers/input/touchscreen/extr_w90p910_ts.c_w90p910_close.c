
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ts {int clk; int timer; int lock; int ts_reg; int state; } ;
struct input_dev {int dummy; } ;


 unsigned long ADC_DIV ;
 unsigned long ADC_EN ;
 unsigned long ADC_INT_EN ;
 unsigned long ADC_WAITTRIG ;
 int TS_IDLE ;
 unsigned long WT_INT_EN ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int clk_disable (int ) ;
 int del_timer_sync (int *) ;
 struct w90p910_ts* input_get_drvdata (struct input_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void w90p910_close(struct input_dev *dev)
{
 struct w90p910_ts *w90p910_ts = input_get_drvdata(dev);
 unsigned long val;



 spin_lock_irq(&w90p910_ts->lock);

 w90p910_ts->state = TS_IDLE;

 val = __raw_readl(w90p910_ts->ts_reg);
 val &= ~(ADC_WAITTRIG | ADC_DIV | ADC_EN | WT_INT_EN | ADC_INT_EN);
 __raw_writel(val, w90p910_ts->ts_reg);

 spin_unlock_irq(&w90p910_ts->lock);


 del_timer_sync(&w90p910_ts->timer);


 clk_disable(w90p910_ts->clk);
}
