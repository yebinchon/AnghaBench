
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ts {scalar_t__ ts_reg; int state; int clk; } ;
struct input_dev {int dummy; } ;


 unsigned long ADC_DELAY ;
 unsigned long ADC_DIV ;
 unsigned long ADC_EN ;
 unsigned long ADC_RST0 ;
 unsigned long ADC_RST1 ;
 unsigned long ADC_WAITTRIG ;
 unsigned long TSC_FOURWIRE ;
 int TS_WAIT_NEW_PACKET ;
 unsigned long WT_INT_EN ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;
 int clk_enable (int ) ;
 struct w90p910_ts* input_get_drvdata (struct input_dev*) ;
 int msleep (int) ;
 int wmb () ;

__attribute__((used)) static int w90p910_open(struct input_dev *dev)
{
 struct w90p910_ts *w90p910_ts = input_get_drvdata(dev);
 unsigned long val;


 clk_enable(w90p910_ts->clk);

 __raw_writel(ADC_RST1, w90p910_ts->ts_reg);
 msleep(1);
 __raw_writel(ADC_RST0, w90p910_ts->ts_reg);
 msleep(1);


 val = __raw_readl(w90p910_ts->ts_reg + 0x04);
 __raw_writel(val & TSC_FOURWIRE, w90p910_ts->ts_reg + 0x04);
 __raw_writel(ADC_DELAY, w90p910_ts->ts_reg + 0x08);

 w90p910_ts->state = TS_WAIT_NEW_PACKET;
 wmb();


 val = __raw_readl(w90p910_ts->ts_reg);
 val |= ADC_WAITTRIG | ADC_DIV | ADC_EN | WT_INT_EN;
 __raw_writel(val, w90p910_ts->ts_reg);

 return 0;
}
