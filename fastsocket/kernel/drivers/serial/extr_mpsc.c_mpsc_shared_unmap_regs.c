
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sdma_intr_base_p; scalar_t__ mpsc_routing_base_p; int * sdma_intr_base; int * mpsc_routing_base; } ;


 int MPSC_ROUTING_REG_BLOCK_SIZE ;
 int MPSC_SDMA_INTR_REG_BLOCK_SIZE ;
 int iounmap (int *) ;
 TYPE_1__ mpsc_shared_regs ;
 int release_mem_region (scalar_t__,int ) ;

__attribute__((used)) static void mpsc_shared_unmap_regs(void)
{
 if (!mpsc_shared_regs.mpsc_routing_base) {
  iounmap(mpsc_shared_regs.mpsc_routing_base);
  release_mem_region(mpsc_shared_regs.mpsc_routing_base_p,
    MPSC_ROUTING_REG_BLOCK_SIZE);
 }
 if (!mpsc_shared_regs.sdma_intr_base) {
  iounmap(mpsc_shared_regs.sdma_intr_base);
  release_mem_region(mpsc_shared_regs.sdma_intr_base_p,
    MPSC_SDMA_INTR_REG_BLOCK_SIZE);
 }

 mpsc_shared_regs.mpsc_routing_base = ((void*)0);
 mpsc_shared_regs.sdma_intr_base = ((void*)0);

 mpsc_shared_regs.mpsc_routing_base_p = 0;
 mpsc_shared_regs.sdma_intr_base_p = 0;
}
