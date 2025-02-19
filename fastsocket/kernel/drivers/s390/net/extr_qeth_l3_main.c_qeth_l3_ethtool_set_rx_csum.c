
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int checksum_type; } ;
struct qeth_card {scalar_t__ state; int gdev; TYPE_1__ options; } ;
struct net_device {struct qeth_card* ml_priv; } ;
typedef enum qeth_checksum_types { ____Placeholder_qeth_checksum_types } qeth_checksum_types ;
typedef enum qeth_card_states { ____Placeholder_qeth_card_states } qeth_card_states ;


 scalar_t__ CARD_STATE_DOWN ;
 scalar_t__ CARD_STATE_UP ;
 int EPERM ;
 int HW_CHECKSUMMING ;
 int SW_CHECKSUMMING ;
 int __qeth_l3_set_offline (int ,int) ;
 int __qeth_l3_set_online (int ,int) ;

__attribute__((used)) static int qeth_l3_ethtool_set_rx_csum(struct net_device *dev, u32 data)
{
 struct qeth_card *card = dev->ml_priv;
 enum qeth_card_states old_state;
 enum qeth_checksum_types csum_type;

 if ((card->state != CARD_STATE_UP) &&
     (card->state != CARD_STATE_DOWN))
  return -EPERM;

 if (data)
  csum_type = HW_CHECKSUMMING;
 else
  csum_type = SW_CHECKSUMMING;

 if (card->options.checksum_type != csum_type) {
  old_state = card->state;
  if (card->state == CARD_STATE_UP)
   __qeth_l3_set_offline(card->gdev, 1);
  card->options.checksum_type = csum_type;
  if (old_state == CARD_STATE_UP)
   __qeth_l3_set_online(card->gdev, 1);
 }
 return 0;
}
