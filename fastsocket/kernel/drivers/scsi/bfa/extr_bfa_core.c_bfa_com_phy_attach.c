
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int trcmod; int ioc; } ;
struct bfa_phy_s {int dummy; } ;
struct bfa_mem_dma_s {int dma_curp; int kva_curp; } ;
typedef int bfa_boolean_t ;


 struct bfa_mem_dma_s* BFA_MEM_PHY_DMA (struct bfa_s*) ;
 struct bfa_phy_s* BFA_PHY (struct bfa_s*) ;
 int bfa_phy_attach (struct bfa_phy_s*,int *,struct bfa_s*,int ,int ) ;
 int bfa_phy_memclaim (struct bfa_phy_s*,int ,int ,int ) ;

__attribute__((used)) static void
bfa_com_phy_attach(struct bfa_s *bfa, bfa_boolean_t mincfg)
{
 struct bfa_phy_s *phy = BFA_PHY(bfa);
 struct bfa_mem_dma_s *phy_dma = BFA_MEM_PHY_DMA(bfa);

 bfa_phy_attach(phy, &bfa->ioc, bfa, bfa->trcmod, mincfg);
 bfa_phy_memclaim(phy, phy_dma->kva_curp, phy_dma->dma_curp, mincfg);
}
