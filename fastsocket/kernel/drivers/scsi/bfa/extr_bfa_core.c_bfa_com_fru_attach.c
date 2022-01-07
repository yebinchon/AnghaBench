
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int trcmod; int ioc; } ;
struct bfa_mem_dma_s {int dma_curp; int kva_curp; } ;
struct bfa_fru_s {int dummy; } ;
typedef int bfa_boolean_t ;


 struct bfa_fru_s* BFA_FRU (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_FRU_DMA (struct bfa_s*) ;
 int bfa_fru_attach (struct bfa_fru_s*,int *,struct bfa_s*,int ,int ) ;
 int bfa_fru_memclaim (struct bfa_fru_s*,int ,int ,int ) ;

__attribute__((used)) static void
bfa_com_fru_attach(struct bfa_s *bfa, bfa_boolean_t mincfg)
{
 struct bfa_fru_s *fru = BFA_FRU(bfa);
 struct bfa_mem_dma_s *fru_dma = BFA_MEM_FRU_DMA(bfa);

 bfa_fru_attach(fru, &bfa->ioc, bfa, bfa->trcmod, mincfg);
 bfa_fru_memclaim(fru, fru_dma->kva_curp, fru_dma->dma_curp, mincfg);
}
