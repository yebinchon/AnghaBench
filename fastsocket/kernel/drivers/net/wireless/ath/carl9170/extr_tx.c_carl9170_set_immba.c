
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ar9170 {int dummy; } ;
struct TYPE_2__ {int mac_control; } ;
struct _carl9170_tx_superframe {TYPE_1__ f; } ;


 int AR9170_TX_MAC_IMM_BA ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static void carl9170_set_immba(struct ar9170 *ar, struct sk_buff *skb)
{
 struct _carl9170_tx_superframe *super;

 super = (void *) skb->data;
 super->f.mac_control |= cpu_to_le16(AR9170_TX_MAC_IMM_BA);
}
