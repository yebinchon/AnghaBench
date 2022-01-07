
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_ts {int ucb; scalar_t__ rtask; } ;
struct input_dev {int dummy; } ;


 int UCB_IRQ_TSPX ;
 int UCB_TS_CR ;
 struct ucb1x00_ts* input_get_drvdata (struct input_dev*) ;
 int kthread_stop (scalar_t__) ;
 int ucb1x00_disable (int ) ;
 int ucb1x00_enable (int ) ;
 int ucb1x00_free_irq (int ,int ,struct ucb1x00_ts*) ;
 int ucb1x00_reg_write (int ,int ,int ) ;

__attribute__((used)) static void ucb1x00_ts_close(struct input_dev *idev)
{
 struct ucb1x00_ts *ts = input_get_drvdata(idev);

 if (ts->rtask)
  kthread_stop(ts->rtask);

 ucb1x00_enable(ts->ucb);
 ucb1x00_free_irq(ts->ucb, UCB_IRQ_TSPX, ts);
 ucb1x00_reg_write(ts->ucb, UCB_TS_CR, 0);
 ucb1x00_disable(ts->ucb);
}
