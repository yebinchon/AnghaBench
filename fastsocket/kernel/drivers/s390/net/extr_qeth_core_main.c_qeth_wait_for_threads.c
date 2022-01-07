
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int wait_q; } ;


 scalar_t__ qeth_is_recovery_task (struct qeth_card*) ;
 scalar_t__ qeth_threads_running (struct qeth_card*,unsigned long) ;
 int wait_event_interruptible (int ,int) ;

int qeth_wait_for_threads(struct qeth_card *card, unsigned long threads)
{
 if (qeth_is_recovery_task(card))
  return 0;
 return wait_event_interruptible(card->wait_q,
   qeth_threads_running(card, threads) == 0);
}
