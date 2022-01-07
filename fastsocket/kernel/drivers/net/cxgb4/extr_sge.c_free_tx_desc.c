
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_sw_desc {int * skb; int sgl; } ;
struct sge_txq {unsigned int cidx; unsigned int size; struct tx_sw_desc* sdesc; } ;
struct device {int dummy; } ;
struct adapter {struct device* pdev_dev; } ;


 int kfree_skb (int *) ;
 scalar_t__ need_skb_unmap () ;
 int unmap_sgl (struct device*,int *,int ,struct sge_txq*) ;

__attribute__((used)) static void free_tx_desc(struct adapter *adap, struct sge_txq *q,
    unsigned int n, bool unmap)
{
 struct tx_sw_desc *d;
 unsigned int cidx = q->cidx;
 struct device *dev = adap->pdev_dev;

 const int need_unmap = need_skb_unmap() && unmap;

 d = &q->sdesc[cidx];
 while (n--) {
  if (d->skb) {
   if (need_unmap)
    unmap_sgl(dev, d->skb, d->sgl, q);
   kfree_skb(d->skb);
   d->skb = ((void*)0);
  }
  ++d;
  if (++cidx == q->size) {
   cidx = 0;
   d = q->sdesc;
  }
 }
 q->cidx = cidx;
}
