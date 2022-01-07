
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {int pa; int * kva; } ;
struct bfa_ablk_s {TYPE_1__ dma_addr; } ;



void
bfa_ablk_memclaim(struct bfa_ablk_s *ablk, u8 *dma_kva, u64 dma_pa)
{
 ablk->dma_addr.kva = dma_kva;
 ablk->dma_addr.pa = dma_pa;
}
