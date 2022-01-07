
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ccwdev; int state; } ;
struct qeth_card {scalar_t__ state; int napi; TYPE_1__ data; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 scalar_t__ CARD_STATE_SOFTSETUP ;
 scalar_t__ CARD_STATE_UP ;
 int CH_STATE_UP ;
 int EIO ;
 int ENODEV ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int napi_enable (int *) ;
 int napi_schedule (int *) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ qdio_stop_irq (int ,int ) ;

__attribute__((used)) static int __qeth_l3_open(struct net_device *dev)
{
 struct qeth_card *card = dev->ml_priv;
 int rc = 0;

 QETH_DBF_TEXT(TRACE, 4, "qethopen");
 if (card->state == CARD_STATE_UP)
  return 0;
 if (card->state != CARD_STATE_SOFTSETUP)
  return -ENODEV;
 card->data.state = CH_STATE_UP;
 card->state = CARD_STATE_UP;
 netif_start_queue(dev);

 if (qdio_stop_irq(card->data.ccwdev, 0) >= 0) {
  napi_enable(&card->napi);
  napi_schedule(&card->napi);
 } else
  rc = -EIO;
 return rc;
}
