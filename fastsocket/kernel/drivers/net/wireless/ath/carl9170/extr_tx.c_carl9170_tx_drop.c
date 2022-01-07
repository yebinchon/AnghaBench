
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sk_buff {scalar_t__ data; } ;
struct ar9170 {int tx_dropped; } ;
struct TYPE_2__ {int cookie; } ;
struct _carl9170_tx_superframe {TYPE_1__ s; } ;


 int CARL9170_TX_SUPER_MISC_QUEUE ;
 int SET_VAL (int ,int ,int ) ;
 int __carl9170_tx_process_status (struct ar9170*,int ,int ) ;
 int * ar9170_qmap ;
 size_t carl9170_get_queue (struct ar9170*,struct sk_buff*) ;

void carl9170_tx_drop(struct ar9170 *ar, struct sk_buff *skb)
{
 struct _carl9170_tx_superframe *super;
 uint8_t q = 0;

 ar->tx_dropped++;

 super = (void *)skb->data;
 SET_VAL(CARL9170_TX_SUPER_MISC_QUEUE, q,
  ar9170_qmap[carl9170_get_queue(ar, skb)]);
 __carl9170_tx_process_status(ar, super->s.cookie, q);
}
