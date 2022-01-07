
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prd_max_nents; int prd_ent_size; int * dmatable_cpu; int dmatable_dma; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int dma_free_coherent (int ,int,int *,int ) ;

void ide_release_dma_engine(ide_hwif_t *hwif)
{
 if (hwif->dmatable_cpu) {
  int prd_size = hwif->prd_max_nents * hwif->prd_ent_size;

  dma_free_coherent(hwif->dev, prd_size,
      hwif->dmatable_cpu, hwif->dmatable_dma);
  hwif->dmatable_cpu = ((void*)0);
 }
}
