
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlsi_ring {unsigned int size; int dir; int len; int pdev; struct ring_descr* rd; } ;
struct ring_descr {struct vlsi_ring* buf; scalar_t__ skb; } ;
typedef scalar_t__ dma_addr_t ;


 int dev_kfree_skb_any (scalar_t__) ;
 int kfree (struct vlsi_ring*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;
 scalar_t__ rd_get_addr (struct ring_descr*) ;
 int rd_set_addr_status (struct ring_descr*,int ,int ) ;

__attribute__((used)) static int vlsi_free_ring(struct vlsi_ring *r)
{
 struct ring_descr *rd;
 unsigned i;
 dma_addr_t busaddr;

 for (i = 0; i < r->size; i++) {
  rd = r->rd + i;
  if (rd->skb)
   dev_kfree_skb_any(rd->skb);
  busaddr = rd_get_addr(rd);
  rd_set_addr_status(rd, 0, 0);
  if (busaddr)
   pci_unmap_single(r->pdev, busaddr, r->len, r->dir);
  kfree(rd->buf);
 }
 kfree(r);
 return 0;
}
