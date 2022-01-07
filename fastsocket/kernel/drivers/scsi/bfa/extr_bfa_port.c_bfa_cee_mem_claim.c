
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct bfa_cee_stats_s {int dummy; } ;
struct TYPE_4__ {int pa; int * kva; } ;
struct TYPE_3__ {int pa; int * kva; } ;
struct bfa_cee_s {struct bfa_cee_stats_s* stats; struct bfa_cee_attr_s* attr; TYPE_2__ stats_dma; TYPE_1__ attr_dma; } ;
struct bfa_cee_attr_s {int dummy; } ;


 int BFA_DMA_ALIGN_SZ ;
 int BFA_ROUNDUP (int,int ) ;

void
bfa_cee_mem_claim(struct bfa_cee_s *cee, u8 *dma_kva, u64 dma_pa)
{
 cee->attr_dma.kva = dma_kva;
 cee->attr_dma.pa = dma_pa;
 cee->stats_dma.kva = dma_kva + BFA_ROUNDUP(
        sizeof(struct bfa_cee_attr_s), BFA_DMA_ALIGN_SZ);
 cee->stats_dma.pa = dma_pa + BFA_ROUNDUP(
        sizeof(struct bfa_cee_attr_s), BFA_DMA_ALIGN_SZ);
 cee->attr = (struct bfa_cee_attr_s *) dma_kva;
 cee->stats = (struct bfa_cee_stats_s *) (dma_kva + BFA_ROUNDUP(
   sizeof(struct bfa_cee_attr_s), BFA_DMA_ALIGN_SZ));
}
