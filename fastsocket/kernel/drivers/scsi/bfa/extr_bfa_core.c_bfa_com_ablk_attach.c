
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ablk_s {int dummy; } ;
struct TYPE_2__ {struct bfa_ablk_s ablk; } ;
struct bfa_s {int ioc; TYPE_1__ modules; } ;
struct bfa_mem_dma_s {int dma_curp; int kva_curp; } ;


 struct bfa_mem_dma_s* BFA_MEM_ABLK_DMA (struct bfa_s*) ;
 int bfa_ablk_attach (struct bfa_ablk_s*,int *) ;
 int bfa_ablk_memclaim (struct bfa_ablk_s*,int ,int ) ;

__attribute__((used)) static void
bfa_com_ablk_attach(struct bfa_s *bfa)
{
 struct bfa_ablk_s *ablk = &bfa->modules.ablk;
 struct bfa_mem_dma_s *ablk_dma = BFA_MEM_ABLK_DMA(bfa);

 bfa_ablk_attach(ablk, &bfa->ioc);
 bfa_ablk_memclaim(ablk, ablk_dma->kva_curp, ablk_dma->dma_curp);
}
