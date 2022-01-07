
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct qeth_card {TYPE_1__ stats; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int qeth_schedule_recovery (struct qeth_card*) ;

void qeth_tx_timeout(struct net_device *dev)
{
 struct qeth_card *card;

 QETH_DBF_TEXT(TRACE, 4, "txtimeo");
 card = dev->ml_priv;
 card->stats.tx_errors++;
 qeth_schedule_recovery(card);
}
