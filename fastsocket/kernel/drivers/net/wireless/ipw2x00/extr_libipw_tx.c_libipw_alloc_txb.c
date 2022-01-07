
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct libipw_txb {int nr_frags; int frag_size; int * fragments; } ;
typedef int gfp_t ;


 int __dev_alloc_skb (int,int ) ;
 int dev_kfree_skb_any (int ) ;
 int kfree (struct libipw_txb*) ;
 struct libipw_txb* kmalloc (int,int ) ;
 int memset (struct libipw_txb*,int ,int) ;
 int skb_reserve (int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct libipw_txb *libipw_alloc_txb(int nr_frags, int txb_size,
       int headroom, gfp_t gfp_mask)
{
 struct libipw_txb *txb;
 int i;
 txb = kmalloc(sizeof(struct libipw_txb) + (sizeof(u8 *) * nr_frags),
        gfp_mask);
 if (!txb)
  return ((void*)0);

 memset(txb, 0, sizeof(struct libipw_txb));
 txb->nr_frags = nr_frags;
 txb->frag_size = txb_size;

 for (i = 0; i < nr_frags; i++) {
  txb->fragments[i] = __dev_alloc_skb(txb_size + headroom,
          gfp_mask);
  if (unlikely(!txb->fragments[i])) {
   i--;
   break;
  }
  skb_reserve(txb->fragments[i], headroom);
 }
 if (unlikely(i != nr_frags)) {
  while (i >= 0)
   dev_kfree_skb_any(txb->fragments[i--]);
  kfree(txb);
  return ((void*)0);
 }
 return txb;
}
