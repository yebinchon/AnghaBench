
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_10__ {int tx_state; TYPE_3__* hdev; int txq; TYPE_5__* p_dev; } ;
typedef TYPE_4__ btuart_info_t ;
struct TYPE_7__ {unsigned int BasePort1; } ;
struct TYPE_11__ {TYPE_1__ io; } ;
struct TYPE_8__ {int byte_tx; } ;
struct TYPE_9__ {TYPE_2__ stat; } ;


 int BT_ERR (char*) ;
 int XMIT_SENDING ;
 int XMIT_WAKEUP ;
 int btuart_write (unsigned int,int,int ,int) ;
 int clear_bit (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int pcmcia_dev_present (TYPE_5__*) ;
 int set_bit (int ,int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void btuart_write_wakeup(btuart_info_t *info)
{
 if (!info) {
  BT_ERR("Unknown device");
  return;
 }

 if (test_and_set_bit(XMIT_SENDING, &(info->tx_state))) {
  set_bit(XMIT_WAKEUP, &(info->tx_state));
  return;
 }

 do {
  register unsigned int iobase = info->p_dev->io.BasePort1;
  register struct sk_buff *skb;
  register int len;

  clear_bit(XMIT_WAKEUP, &(info->tx_state));

  if (!pcmcia_dev_present(info->p_dev))
   return;

  if (!(skb = skb_dequeue(&(info->txq))))
   break;


  len = btuart_write(iobase, 16, skb->data, skb->len);
  set_bit(XMIT_WAKEUP, &(info->tx_state));

  if (len == skb->len) {
   kfree_skb(skb);
  } else {
   skb_pull(skb, len);
   skb_queue_head(&(info->txq), skb);
  }

  info->hdev->stat.byte_tx += len;

 } while (test_bit(XMIT_WAKEUP, &(info->tx_state)));

 clear_bit(XMIT_SENDING, &(info->tx_state));
}
