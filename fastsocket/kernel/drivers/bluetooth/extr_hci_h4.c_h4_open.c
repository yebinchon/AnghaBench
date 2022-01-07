
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct h4_struct* priv; } ;
struct h4_struct {int txq; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 struct h4_struct* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int h4_open(struct hci_uart *hu)
{
 struct h4_struct *h4;

 BT_DBG("hu %p", hu);

 h4 = kzalloc(sizeof(*h4), GFP_ATOMIC);
 if (!h4)
  return -ENOMEM;

 skb_queue_head_init(&h4->txq);

 hu->priv = h4;
 return 0;
}
