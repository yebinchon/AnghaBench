
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netfront_info {TYPE_1__* tx_skbs; int tx_skb_freelist; int * grant_tx_ref; int gref_tx_head; } ;
struct TYPE_3__ {struct sk_buff* skb; } ;


 int GNTMAP_readonly ;
 int GRANT_INVALID_REF ;
 int NET_TX_RING_SIZE ;
 int add_id_to_freelist (int *,TYPE_1__*,int) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int gnttab_end_foreign_access_ref (int ,int ) ;
 int gnttab_release_grant_reference (int *,int ) ;
 scalar_t__ skb_entry_is_link (TYPE_1__*) ;

__attribute__((used)) static void xennet_release_tx_bufs(struct netfront_info *np)
{
 struct sk_buff *skb;
 int i;

 for (i = 0; i < NET_TX_RING_SIZE; i++) {

  if (skb_entry_is_link(&np->tx_skbs[i]))
   continue;

  skb = np->tx_skbs[i].skb;
  gnttab_end_foreign_access_ref(np->grant_tx_ref[i],
           GNTMAP_readonly);
  gnttab_release_grant_reference(&np->gref_tx_head,
            np->grant_tx_ref[i]);
  np->grant_tx_ref[i] = GRANT_INVALID_REF;
  add_id_to_freelist(&np->tx_skb_freelist, np->tx_skbs, i);
  dev_kfree_skb_irq(skb);
 }
}
