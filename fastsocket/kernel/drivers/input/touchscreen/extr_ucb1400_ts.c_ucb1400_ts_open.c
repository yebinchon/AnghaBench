
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int * ts_task; } ;
struct input_dev {int dummy; } ;


 int BUG_ON (int *) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 struct ucb1400_ts* input_get_drvdata (struct input_dev*) ;
 int * kthread_run (int ,struct ucb1400_ts*,char*) ;
 int ucb1400_ts_thread ;

__attribute__((used)) static int ucb1400_ts_open(struct input_dev *idev)
{
 struct ucb1400_ts *ucb = input_get_drvdata(idev);
 int ret = 0;

 BUG_ON(ucb->ts_task);

 ucb->ts_task = kthread_run(ucb1400_ts_thread, ucb, "UCB1400_ts");
 if (IS_ERR(ucb->ts_task)) {
  ret = PTR_ERR(ucb->ts_task);
  ucb->ts_task = ((void*)0);
 }

 return ret;
}
