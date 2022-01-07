
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct bfusb_data_scb {struct urb* urb; } ;
struct bfusb_data {int completed_q; } ;


 int BT_DBG (char*,struct bfusb_data*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static struct urb *bfusb_get_completed(struct bfusb_data *data)
{
 struct sk_buff *skb;
 struct urb *urb = ((void*)0);

 BT_DBG("bfusb %p", data);

 skb = skb_dequeue(&data->completed_q);
 if (skb) {
  urb = ((struct bfusb_data_scb *) skb->cb)->urb;
  kfree_skb(skb);
 }

 return urb;
}
