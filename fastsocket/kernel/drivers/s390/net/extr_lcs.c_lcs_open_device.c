
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; scalar_t__ ml_priv; } ;
struct lcs_card {int state; } ;


 int DEV_STATE_UP ;
 int IFF_UP ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int lcs_detect (struct lcs_card*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_err (char*) ;
 int trace ;

__attribute__((used)) static int
lcs_open_device(struct net_device *dev)
{
 struct lcs_card *card;
 int rc;

 LCS_DBF_TEXT(2, trace, "opendev");
 card = (struct lcs_card *) dev->ml_priv;

 rc = lcs_detect(card);
 if (rc) {
  pr_err("Error in opening device!\n");

 } else {
  dev->flags |= IFF_UP;
  netif_carrier_on(dev);
  netif_wake_queue(dev);
  card->state = DEV_STATE_UP;
 }
 return rc;
}
