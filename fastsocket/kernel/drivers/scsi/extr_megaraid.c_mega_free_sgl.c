
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * epthru; int epthru_dma_addr; int * pthru; int pthru_dma_addr; int * sgl64; int sgl_dma_addr; } ;
typedef TYPE_1__ scb_t ;
typedef int mega_sgl64 ;
typedef int mega_passthru ;
typedef int mega_ext_passthru ;
struct TYPE_5__ {int max_cmds; int sglen; int dev; TYPE_1__* scb_list; } ;
typedef TYPE_2__ adapter_t ;


 int pci_free_consistent (int ,int,int *,int ) ;

__attribute__((used)) static inline void
mega_free_sgl(adapter_t *adapter)
{
 scb_t *scb;
 int i;

 for(i = 0; i < adapter->max_cmds; i++) {

  scb = &adapter->scb_list[i];

  if( scb->sgl64 ) {
   pci_free_consistent(adapter->dev,
    sizeof(mega_sgl64) * adapter->sglen,
    scb->sgl64,
    scb->sgl_dma_addr);

   scb->sgl64 = ((void*)0);
  }

  if( scb->pthru ) {
   pci_free_consistent(adapter->dev, sizeof(mega_passthru),
    scb->pthru, scb->pthru_dma_addr);

   scb->pthru = ((void*)0);
  }

  if( scb->epthru ) {
   pci_free_consistent(adapter->dev,
    sizeof(mega_ext_passthru),
    scb->epthru, scb->epthru_dma_addr);

   scb->epthru = ((void*)0);
  }

 }
}
