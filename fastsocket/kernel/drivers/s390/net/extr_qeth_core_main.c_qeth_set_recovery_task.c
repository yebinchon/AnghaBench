
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int recovery_task; } ;


 int current ;

void qeth_set_recovery_task(struct qeth_card *card)
{
 card->recovery_task = current;
}
