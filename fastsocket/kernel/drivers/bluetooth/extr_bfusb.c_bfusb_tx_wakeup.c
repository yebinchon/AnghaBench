
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct bfusb_data {int state; int transmit_q; int pending_tx; } ;


 scalar_t__ BFUSB_MAX_BULK_TX ;
 int BFUSB_TX_PROCESS ;
 int BFUSB_TX_WAKEUP ;
 int BT_DBG (char*,struct bfusb_data*) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ bfusb_send_bulk (struct bfusb_data*,struct sk_buff*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bfusb_tx_wakeup(struct bfusb_data *data)
{
 struct sk_buff *skb;

 BT_DBG("bfusb %p", data);

 if (test_and_set_bit(BFUSB_TX_PROCESS, &data->state)) {
  set_bit(BFUSB_TX_WAKEUP, &data->state);
  return;
 }

 do {
  clear_bit(BFUSB_TX_WAKEUP, &data->state);

  while ((atomic_read(&data->pending_tx) < BFUSB_MAX_BULK_TX) &&
    (skb = skb_dequeue(&data->transmit_q))) {
   if (bfusb_send_bulk(data, skb) < 0) {
    skb_queue_head(&data->transmit_q, skb);
    break;
   }
  }

 } while (test_bit(BFUSB_TX_WAKEUP, &data->state));

 clear_bit(BFUSB_TX_PROCESS, &data->state);
}
