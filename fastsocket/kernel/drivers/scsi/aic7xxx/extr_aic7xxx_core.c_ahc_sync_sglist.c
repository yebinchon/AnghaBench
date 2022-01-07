
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scb {int sg_count; int sg_list; TYPE_2__* sg_map; } ;
struct ahc_softc {TYPE_1__* scb_data; } ;
struct ahc_dma_seg {int dummy; } ;
struct TYPE_4__ {int sg_vaddr; int sg_dmamap; } ;
struct TYPE_3__ {int sg_dmat; } ;


 int ahc_dmamap_sync (struct ahc_softc*,int ,int ,int,int,int) ;

void
ahc_sync_sglist(struct ahc_softc *ahc, struct scb *scb, int op)
{
 if (scb->sg_count == 0)
  return;

 ahc_dmamap_sync(ahc, ahc->scb_data->sg_dmat, scb->sg_map->sg_dmamap,
             (scb->sg_list - scb->sg_map->sg_vaddr)
    * sizeof(struct ahc_dma_seg),
          sizeof(struct ahc_dma_seg) * scb->sg_count, op);
}
