
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpsc_port_info {scalar_t__ brg_base_p; scalar_t__ sdma_base_p; scalar_t__ mpsc_base_p; int * brg_base; int * sdma_base; int * mpsc_base; } ;


 int MPSC_BRG_REG_BLOCK_SIZE ;
 int MPSC_REG_BLOCK_SIZE ;
 int MPSC_SDMA_REG_BLOCK_SIZE ;
 int iounmap (int *) ;
 int release_mem_region (scalar_t__,int ) ;

__attribute__((used)) static void mpsc_drv_unmap_regs(struct mpsc_port_info *pi)
{
 if (!pi->mpsc_base) {
  iounmap(pi->mpsc_base);
  release_mem_region(pi->mpsc_base_p, MPSC_REG_BLOCK_SIZE);
 }
 if (!pi->sdma_base) {
  iounmap(pi->sdma_base);
  release_mem_region(pi->sdma_base_p, MPSC_SDMA_REG_BLOCK_SIZE);
 }
 if (!pi->brg_base) {
  iounmap(pi->brg_base);
  release_mem_region(pi->brg_base_p, MPSC_BRG_REG_BLOCK_SIZE);
 }

 pi->mpsc_base = ((void*)0);
 pi->sdma_base = ((void*)0);
 pi->brg_base = ((void*)0);

 pi->mpsc_base_p = 0;
 pi->sdma_base_p = 0;
 pi->brg_base_p = 0;
}
