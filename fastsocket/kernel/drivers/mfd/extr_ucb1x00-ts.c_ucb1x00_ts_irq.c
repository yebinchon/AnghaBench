
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_ts {int irq_wait; int ucb; } ;


 int UCB_FALLING ;
 int UCB_IRQ_TSPX ;
 int ucb1x00_disable_irq (int ,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void ucb1x00_ts_irq(int idx, void *id)
{
 struct ucb1x00_ts *ts = id;

 ucb1x00_disable_irq(ts->ucb, UCB_IRQ_TSPX, UCB_FALLING);
 wake_up(&ts->irq_wait);
}
