
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pnx4008_dma_ll {struct pnx4008_dma_ll* next; int next_dma; } ;


 int pnx4008_free_ll_entry (struct pnx4008_dma_ll*,int ) ;

void pnx4008_free_ll(u32 ll_dma, struct pnx4008_dma_ll * ll)
{
 struct pnx4008_dma_ll *ptr;
 u32 dma;

 while (ll) {
  dma = ll->next_dma;
  ptr = ll->next;
  pnx4008_free_ll_entry(ll, ll_dma);

  ll_dma = dma;
  ll = ptr;
 }
}
