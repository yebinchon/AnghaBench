
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ checksum_type; } ;
struct qeth_card {TYPE_1__ options; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 scalar_t__ HW_CHECKSUMMING ;

__attribute__((used)) static u32 qeth_l3_ethtool_get_rx_csum(struct net_device *dev)
{
 struct qeth_card *card = dev->ml_priv;

 return (card->options.checksum_type == HW_CHECKSUMMING);
}
