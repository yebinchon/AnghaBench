
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int large_send; } ;
struct qeth_card {TYPE_2__ options; TYPE_1__* dev; } ;
typedef enum qeth_large_send_types { ____Placeholder_qeth_large_send_types } qeth_large_send_types ;
struct TYPE_3__ {int features; } ;


 int EOPNOTSUPP ;
 int IPA_OUTBOUND_TSO ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 void* QETH_LARGE_SEND_NO ;
 scalar_t__ QETH_LARGE_SEND_TSO ;
 scalar_t__ qeth_is_supported (struct qeth_card*,int ) ;

int qeth_l3_set_large_send(struct qeth_card *card,
  enum qeth_large_send_types type)
{
 int rc = 0;

 card->options.large_send = type;
 if (card->dev == ((void*)0))
  return 0;

 if (card->options.large_send == QETH_LARGE_SEND_TSO) {
  if (qeth_is_supported(card, IPA_OUTBOUND_TSO)) {
   card->dev->features |= NETIF_F_TSO | NETIF_F_SG |
     NETIF_F_IP_CSUM;
  } else {
   card->dev->features &= ~(NETIF_F_TSO | NETIF_F_SG |
     NETIF_F_IP_CSUM);
   card->options.large_send = QETH_LARGE_SEND_NO;
   rc = -EOPNOTSUPP;
  }
 } else {
  card->dev->features &= ~(NETIF_F_TSO | NETIF_F_SG |
     NETIF_F_IP_CSUM);
  card->options.large_send = QETH_LARGE_SEND_NO;
 }
 return rc;
}
