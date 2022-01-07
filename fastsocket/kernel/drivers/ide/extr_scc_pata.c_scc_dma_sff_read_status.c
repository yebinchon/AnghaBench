
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;


 int in_be32 (void*) ;

__attribute__((used)) static u8 scc_dma_sff_read_status(ide_hwif_t *hwif)
{
 return (u8)in_be32((void *)(hwif->dma_base + 4));
}
