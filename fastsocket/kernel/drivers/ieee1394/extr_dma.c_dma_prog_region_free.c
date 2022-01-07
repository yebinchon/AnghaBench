
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_prog_region {int n_pages; scalar_t__ bus_addr; int * dev; int * kvirt; } ;


 int PAGE_SHIFT ;
 int pci_free_consistent (int *,int,int *,scalar_t__) ;

void dma_prog_region_free(struct dma_prog_region *prog)
{
 if (prog->kvirt) {
  pci_free_consistent(prog->dev, prog->n_pages << PAGE_SHIFT,
        prog->kvirt, prog->bus_addr);
 }

 prog->kvirt = ((void*)0);
 prog->dev = ((void*)0);
 prog->n_pages = 0;
 prog->bus_addr = 0;
}
