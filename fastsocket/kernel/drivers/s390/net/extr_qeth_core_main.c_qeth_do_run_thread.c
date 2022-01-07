
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int wait_q; } ;


 int __qeth_do_run_thread (struct qeth_card*,unsigned long) ;
 int wait_event (int ,int) ;

int qeth_do_run_thread(struct qeth_card *card, unsigned long thread)
{
 int rc = 0;

 wait_event(card->wait_q,
     (rc = __qeth_do_run_thread(card, thread)) >= 0);
 return rc;
}
