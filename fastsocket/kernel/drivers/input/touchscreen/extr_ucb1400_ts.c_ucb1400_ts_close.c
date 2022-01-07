
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int ac97; scalar_t__ ts_task; } ;
struct input_dev {int dummy; } ;


 int UCB_TS_CR ;
 struct ucb1400_ts* input_get_drvdata (struct input_dev*) ;
 int kthread_stop (scalar_t__) ;
 int ucb1400_reg_write (int ,int ,int ) ;
 int ucb1400_ts_irq_disable (int ) ;

__attribute__((used)) static void ucb1400_ts_close(struct input_dev *idev)
{
 struct ucb1400_ts *ucb = input_get_drvdata(idev);

 if (ucb->ts_task)
  kthread_stop(ucb->ts_task);

 ucb1400_ts_irq_disable(ucb->ac97);
 ucb1400_reg_write(ucb->ac97, UCB_TS_CR, 0);
}
