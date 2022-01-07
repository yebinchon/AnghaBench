
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bfa_fcport_stats_u {int dummy; } bfa_fcport_stats_u ;
struct bfa_mem_dma_s {int dummy; } ;
struct bfa_fcport_s {union bfa_fcport_stats_u* stats; int stats_pa; scalar_t__ stats_kva; struct bfa_mem_dma_s fcport_dma; } ;


 int bfa_mem_dma_phys (struct bfa_mem_dma_s*) ;
 scalar_t__ bfa_mem_dma_virt (struct bfa_mem_dma_s*) ;

__attribute__((used)) static void
bfa_fcport_mem_claim(struct bfa_fcport_s *fcport)
{
 struct bfa_mem_dma_s *fcport_dma = &fcport->fcport_dma;

 fcport->stats_kva = bfa_mem_dma_virt(fcport_dma);
 fcport->stats_pa = bfa_mem_dma_phys(fcport_dma);
 fcport->stats = (union bfa_fcport_stats_u *)
    bfa_mem_dma_virt(fcport_dma);
}
