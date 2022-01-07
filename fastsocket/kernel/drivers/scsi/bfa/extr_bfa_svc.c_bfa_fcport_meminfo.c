
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_meminfo_s {int dummy; } ;
struct bfa_mem_dma_s {int dummy; } ;
struct bfa_iocfc_cfg_s {int dummy; } ;


 struct bfa_mem_dma_s* BFA_MEM_FCPORT_DMA (struct bfa_s*) ;
 int FCPORT_STATS_DMA_SZ ;
 int bfa_mem_dma_setup (struct bfa_meminfo_s*,struct bfa_mem_dma_s*,int ) ;

__attribute__((used)) static void
bfa_fcport_meminfo(struct bfa_iocfc_cfg_s *cfg, struct bfa_meminfo_s *minfo,
     struct bfa_s *bfa)
{
 struct bfa_mem_dma_s *fcport_dma = BFA_MEM_FCPORT_DMA(bfa);

 bfa_mem_dma_setup(minfo, fcport_dma, FCPORT_STATS_DMA_SZ);
}
