
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {scalar_t__ state; int napi; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 scalar_t__ CARD_STATE_SOFTSETUP ;
 scalar_t__ CARD_STATE_UP ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int napi_disable (int *) ;
 int netif_tx_disable (struct net_device*) ;

__attribute__((used)) static int qeth_l2_stop(struct net_device *dev)
{
 struct qeth_card *card = dev->ml_priv;

 QETH_DBF_TEXT(TRACE, 4, "qethstop");
 netif_tx_disable(dev);
 if (card->state == CARD_STATE_UP) {
  card->state = CARD_STATE_SOFTSETUP;
  napi_disable(&card->napi);
 }
 return 0;
}
