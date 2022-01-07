
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; scalar_t__ ml_priv; } ;
struct TYPE_4__ {scalar_t__ state; int wait_q; } ;
struct lcs_card {TYPE_1__* dev; TYPE_2__ write; } ;
struct TYPE_3__ {int dev; } ;


 int IFF_UP ;
 scalar_t__ LCS_CH_STATE_RUNNING ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int dev_err (int *,char*) ;
 int lcs_stopcard (struct lcs_card*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int trace ;
 int wait_event (int ,int) ;

__attribute__((used)) static int
lcs_stop_device(struct net_device *dev)
{
 struct lcs_card *card;
 int rc;

 LCS_DBF_TEXT(2, trace, "stopdev");
 card = (struct lcs_card *) dev->ml_priv;
 netif_carrier_off(dev);
 netif_tx_disable(dev);
 dev->flags &= ~IFF_UP;
 wait_event(card->write.wait_q,
  (card->write.state != LCS_CH_STATE_RUNNING));
 rc = lcs_stopcard(card);
 if (rc)
  dev_err(&card->dev->dev,
   " Shutting down the LCS device failed\n ");
 return rc;
}
