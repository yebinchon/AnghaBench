
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_sfp_s {int dummy; } ;
struct bfa_s {int trcmod; int ioc; } ;
struct bfa_mem_dma_s {int dma_curp; int kva_curp; } ;


 struct bfa_mem_dma_s* BFA_MEM_SFP_DMA (struct bfa_s*) ;
 struct bfa_sfp_s* BFA_SFP_MOD (struct bfa_s*) ;
 int bfa_sfp_attach (struct bfa_sfp_s*,int *,struct bfa_s*,int ) ;
 int bfa_sfp_memclaim (struct bfa_sfp_s*,int ,int ) ;

__attribute__((used)) static void
bfa_com_sfp_attach(struct bfa_s *bfa)
{
 struct bfa_sfp_s *sfp = BFA_SFP_MOD(bfa);
 struct bfa_mem_dma_s *sfp_dma = BFA_MEM_SFP_DMA(bfa);

 bfa_sfp_attach(sfp, &bfa->ioc, bfa, bfa->trcmod);
 bfa_sfp_memclaim(sfp, sfp_dma->kva_curp, sfp_dma->dma_curp);
}
