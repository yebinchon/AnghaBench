
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int large_send; } ;
struct qeth_card {TYPE_1__ options; } ;
struct net_device {int features; struct qeth_card* ml_priv; } ;


 int NETIF_F_TSO ;
 int QETH_LARGE_SEND_NO ;
 int QETH_LARGE_SEND_TSO ;
 int qeth_l3_set_large_send (struct qeth_card*,int ) ;

__attribute__((used)) static int qeth_l3_ethtool_set_tso(struct net_device *dev, u32 data)
{
 struct qeth_card *card = dev->ml_priv;
 int rc = 0;

 if (data) {
  rc = qeth_l3_set_large_send(card, QETH_LARGE_SEND_TSO);
 } else {
  dev->features &= ~NETIF_F_TSO;
  card->options.large_send = QETH_LARGE_SEND_NO;
 }
 return rc;
}
