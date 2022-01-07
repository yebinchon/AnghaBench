
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_ts {int * rtask; int ucb; int y_res; int x_res; int irq_wait; } ;
struct input_dev {int dummy; } ;


 int BUG_ON (int *) ;
 int EFAULT ;
 int IS_ERR (int *) ;
 int UCB_IRQ_TSPX ;
 int init_waitqueue_head (int *) ;
 struct ucb1x00_ts* input_get_drvdata (struct input_dev*) ;
 int * kthread_run (int ,struct ucb1x00_ts*,char*) ;
 int ucb1x00_adc_disable (int ) ;
 int ucb1x00_adc_enable (int ) ;
 int ucb1x00_free_irq (int ,int ,struct ucb1x00_ts*) ;
 int ucb1x00_hook_irq (int ,int ,int ,struct ucb1x00_ts*) ;
 int ucb1x00_thread ;
 int ucb1x00_ts_irq ;
 int ucb1x00_ts_read_xres (struct ucb1x00_ts*) ;
 int ucb1x00_ts_read_yres (struct ucb1x00_ts*) ;

__attribute__((used)) static int ucb1x00_ts_open(struct input_dev *idev)
{
 struct ucb1x00_ts *ts = input_get_drvdata(idev);
 int ret = 0;

 BUG_ON(ts->rtask);

 init_waitqueue_head(&ts->irq_wait);
 ret = ucb1x00_hook_irq(ts->ucb, UCB_IRQ_TSPX, ucb1x00_ts_irq, ts);
 if (ret < 0)
  goto out;





 ucb1x00_adc_enable(ts->ucb);
 ts->x_res = ucb1x00_ts_read_xres(ts);
 ts->y_res = ucb1x00_ts_read_yres(ts);
 ucb1x00_adc_disable(ts->ucb);

 ts->rtask = kthread_run(ucb1x00_thread, ts, "ktsd");
 if (!IS_ERR(ts->rtask)) {
  ret = 0;
 } else {
  ucb1x00_free_irq(ts->ucb, UCB_IRQ_TSPX, ts);
  ts->rtask = ((void*)0);
  ret = -EFAULT;
 }

 out:
 return ret;
}
