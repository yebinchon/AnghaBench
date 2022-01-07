
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int * recovery_task; } ;



void qeth_clear_recovery_task(struct qeth_card *card)
{
 card->recovery_task = ((void*)0);
}
