
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ahc_softc {int dev_softc; } ;
typedef int bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {int maxsize; } ;


 int ENOMEM ;
 void* pci_alloc_consistent (int ,int ,int *) ;

int
ahc_dmamem_alloc(struct ahc_softc *ahc, bus_dma_tag_t dmat, void** vaddr,
   int flags, bus_dmamap_t *mapp)
{
 *vaddr = pci_alloc_consistent(ahc->dev_softc,
          dmat->maxsize, mapp);
 if (*vaddr == ((void*)0))
  return ENOMEM;
 return 0;
}
