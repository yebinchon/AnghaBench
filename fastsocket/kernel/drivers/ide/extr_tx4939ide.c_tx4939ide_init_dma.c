
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ide_port_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ extra_base; scalar_t__ dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;


 int TX4939IDE_DMA_Cmd ;
 int ide_allocate_dma_engine (TYPE_1__*) ;
 scalar_t__ tx4939ide_swizzleb (int ) ;

__attribute__((used)) static int tx4939ide_init_dma(ide_hwif_t *hwif, const struct ide_port_info *d)
{
 hwif->dma_base =
  hwif->extra_base + tx4939ide_swizzleb(TX4939IDE_DMA_Cmd);




 return ide_allocate_dma_engine(hwif);
}
