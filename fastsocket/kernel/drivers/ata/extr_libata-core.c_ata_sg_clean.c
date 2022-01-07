
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ata_queued_cmd {int dma_dir; struct scatterlist* sg; int flags; int orig_n_elem; scalar_t__ n_elem; struct ata_port* ap; } ;
struct ata_port {int dev; } ;


 int ATA_QCFLAG_DMAMAP ;
 int VPRINTK (char*,scalar_t__) ;
 int WARN_ON_ONCE (int ) ;
 int dma_unmap_sg (int ,struct scatterlist*,int ,int) ;

void ata_sg_clean(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct scatterlist *sg = qc->sg;
 int dir = qc->dma_dir;

 WARN_ON_ONCE(sg == ((void*)0));

 VPRINTK("unmapping %u sg elements\n", qc->n_elem);

 if (qc->n_elem)
  dma_unmap_sg(ap->dev, sg, qc->orig_n_elem, dir);

 qc->flags &= ~ATA_QCFLAG_DMAMAP;
 qc->sg = ((void*)0);
}
