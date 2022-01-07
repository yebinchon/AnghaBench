
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_sw_desc {int * skb; scalar_t__ eop; } ;
struct sge_txq {unsigned int cidx; scalar_t__ cntxt_id; unsigned int size; struct tx_sw_desc* sdesc; } ;
struct pci_dev {int dummy; } ;
struct adapter {struct pci_dev* pdev; } ;


 scalar_t__ FW_TUNNEL_SGEEC_START ;
 int kfree_skb (int *) ;
 scalar_t__ need_skb_unmap () ;
 int unmap_skb (int *,struct sge_txq*,unsigned int,struct pci_dev*) ;

__attribute__((used)) static void free_tx_desc(struct adapter *adapter, struct sge_txq *q,
    unsigned int n)
{
 struct tx_sw_desc *d;
 struct pci_dev *pdev = adapter->pdev;
 unsigned int cidx = q->cidx;

 const int need_unmap = need_skb_unmap() &&
          q->cntxt_id >= FW_TUNNEL_SGEEC_START;

 d = &q->sdesc[cidx];
 while (n--) {
  if (d->skb) {
   if (need_unmap)
    unmap_skb(d->skb, q, cidx, pdev);
   if (d->eop) {
    kfree_skb(d->skb);
    d->skb = ((void*)0);
   }
  }
  ++d;
  if (++cidx == q->size) {
   cidx = 0;
   d = q->sdesc;
  }
 }
 q->cidx = cidx;
}
