
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_struct {int hcill_state; int hcill_lock; int tx_wait_q; int txq; } ;
struct hci_uart {struct ll_struct* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int HCILL_AWAKE ;
 struct ll_struct* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ll_open(struct hci_uart *hu)
{
 struct ll_struct *ll;

 BT_DBG("hu %p", hu);

 ll = kzalloc(sizeof(*ll), GFP_ATOMIC);
 if (!ll)
  return -ENOMEM;

 skb_queue_head_init(&ll->txq);
 skb_queue_head_init(&ll->tx_wait_q);
 spin_lock_init(&ll->hcill_lock);

 ll->hcill_state = HCILL_AWAKE;

 hu->priv = ll;

 return 0;
}
