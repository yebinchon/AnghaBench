
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xen_netif_tx_request {unsigned int size; unsigned int id; unsigned int offset; int flags; void* gref; } ;
struct sk_buff {char* data; } ;
struct TYPE_10__ {scalar_t__ req_prod_pvt; } ;
struct netfront_info {TYPE_5__ tx; void** grant_tx_ref; TYPE_1__* xbdev; int gref_tx_head; TYPE_4__* tx_skbs; int tx_skb_freelist; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {unsigned int page_offset; unsigned int size; int page; } ;
typedef TYPE_2__ skb_frag_t ;
typedef void* grant_ref_t ;
struct TYPE_9__ {void* skb; } ;
struct TYPE_8__ {int nr_frags; TYPE_2__* frags; } ;
struct TYPE_6__ {int otherend_id; } ;
typedef scalar_t__ RING_IDX ;


 int BUG_ON (int) ;
 int GNTMAP_readonly ;
 int NETTXF_more_data ;
 unsigned int PAGE_SIZE ;
 struct xen_netif_tx_request* RING_GET_REQUEST (TYPE_5__*,int ) ;
 unsigned int get_id_from_freelist (int *,TYPE_4__*) ;
 void* gnttab_claim_grant_reference (int *) ;
 int gnttab_grant_foreign_access_ref (void*,int ,unsigned long,int ) ;
 struct netfront_info* netdev_priv (struct net_device*) ;
 unsigned int offset_in_page (char*) ;
 int page_to_pfn (int ) ;
 unsigned long pfn_to_mfn (int ) ;
 void* skb_get (struct sk_buff*) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 unsigned long virt_to_mfn (char*) ;

__attribute__((used)) static void xennet_make_frags(struct sk_buff *skb, struct net_device *dev,
         struct xen_netif_tx_request *tx)
{
 struct netfront_info *np = netdev_priv(dev);
 char *data = skb->data;
 unsigned long mfn;
 RING_IDX prod = np->tx.req_prod_pvt;
 int frags = skb_shinfo(skb)->nr_frags;
 unsigned int offset = offset_in_page(data);
 unsigned int len = skb_headlen(skb);
 unsigned int id;
 grant_ref_t ref;
 int i;



 while (len > PAGE_SIZE - offset) {
  tx->size = PAGE_SIZE - offset;
  tx->flags |= NETTXF_more_data;
  len -= tx->size;
  data += tx->size;
  offset = 0;

  id = get_id_from_freelist(&np->tx_skb_freelist, np->tx_skbs);
  np->tx_skbs[id].skb = skb_get(skb);
  tx = RING_GET_REQUEST(&np->tx, prod++);
  tx->id = id;
  ref = gnttab_claim_grant_reference(&np->gref_tx_head);
  BUG_ON((signed short)ref < 0);

  mfn = virt_to_mfn(data);
  gnttab_grant_foreign_access_ref(ref, np->xbdev->otherend_id,
      mfn, GNTMAP_readonly);

  tx->gref = np->grant_tx_ref[id] = ref;
  tx->offset = offset;
  tx->size = len;
  tx->flags = 0;
 }


 for (i = 0; i < frags; i++) {
  skb_frag_t *frag = skb_shinfo(skb)->frags + i;

  tx->flags |= NETTXF_more_data;

  id = get_id_from_freelist(&np->tx_skb_freelist, np->tx_skbs);
  np->tx_skbs[id].skb = skb_get(skb);
  tx = RING_GET_REQUEST(&np->tx, prod++);
  tx->id = id;
  ref = gnttab_claim_grant_reference(&np->gref_tx_head);
  BUG_ON((signed short)ref < 0);

  mfn = pfn_to_mfn(page_to_pfn(frag->page));
  gnttab_grant_foreign_access_ref(ref, np->xbdev->otherend_id,
      mfn, GNTMAP_readonly);

  tx->gref = np->grant_tx_ref[id] = ref;
  tx->offset = frag->page_offset;
  tx->size = frag->size;
  tx->flags = 0;
 }

 np->tx.req_prod_pvt = prod;
}
