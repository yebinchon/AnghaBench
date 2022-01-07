
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdQ_e {int dummy; } ;
struct cmdQ_ce {int * skb; } ;
struct cmdQ {unsigned int size; struct cmdQ_e* entries; struct cmdQ_ce* centries; } ;
typedef unsigned int dma_addr_t ;


 unsigned int PAGE_SIZE ;
 unsigned int SGE_TX_DESC_MAX_PLEN ;
 int dma_len ;
 int pci_unmap_len_set (struct cmdQ_ce*,int ,int ) ;
 int write_tx_desc (struct cmdQ_e*,unsigned int,unsigned int,unsigned int,int) ;

__attribute__((used)) static inline unsigned int write_large_page_tx_descs(unsigned int pidx,
           struct cmdQ_e **e,
           struct cmdQ_ce **ce,
           unsigned int *gen,
           dma_addr_t *desc_mapping,
           unsigned int *desc_len,
           unsigned int nfrags,
           struct cmdQ *q)
{
 if (PAGE_SIZE > SGE_TX_DESC_MAX_PLEN) {
  struct cmdQ_e *e1 = *e;
  struct cmdQ_ce *ce1 = *ce;

  while (*desc_len > SGE_TX_DESC_MAX_PLEN) {
   *desc_len -= SGE_TX_DESC_MAX_PLEN;
   write_tx_desc(e1, *desc_mapping, SGE_TX_DESC_MAX_PLEN,
          *gen, nfrags == 0 && *desc_len == 0);
   ce1->skb = ((void*)0);
   pci_unmap_len_set(ce1, dma_len, 0);
   *desc_mapping += SGE_TX_DESC_MAX_PLEN;
   if (*desc_len) {
    ce1++;
    e1++;
    if (++pidx == q->size) {
     pidx = 0;
     *gen ^= 1;
     ce1 = q->centries;
     e1 = q->entries;
    }
   }
  }
  *e = e1;
  *ce = ce1;
 }
 return pidx;
}
