
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libipw_txb {int nr_frags; scalar_t__* fragments; } ;


 int dev_kfree_skb_any (scalar_t__) ;
 int kfree (struct libipw_txb*) ;
 scalar_t__ unlikely (int) ;

void libipw_txb_free(struct libipw_txb *txb)
{
 int i;
 if (unlikely(!txb))
  return;
 for (i = 0; i < txb->nr_frags; i++)
  if (txb->fragments[i])
   dev_kfree_skb_any(txb->fragments[i]);
 kfree(txb);
}
