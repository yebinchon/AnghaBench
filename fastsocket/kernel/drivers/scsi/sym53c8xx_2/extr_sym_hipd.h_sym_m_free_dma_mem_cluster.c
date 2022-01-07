
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* m_vtob_p ;
typedef TYPE_2__* m_pool_p ;
struct TYPE_6__ {int dev_dmat; } ;
struct TYPE_5__ {int baddr; int vaddr; } ;


 int SYM_MEM_CLUSTER_SIZE ;
 int dma_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static inline void sym_m_free_dma_mem_cluster(m_pool_p mp, m_vtob_p vbp)
{
 dma_free_coherent(mp->dev_dmat, SYM_MEM_CLUSTER_SIZE, vbp->vaddr,
   vbp->baddr);
}
