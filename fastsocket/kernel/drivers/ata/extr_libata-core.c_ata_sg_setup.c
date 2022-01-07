
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {unsigned int n_elem; unsigned int orig_n_elem; int flags; int dma_dir; int sg; struct ata_port* ap; } ;
struct ata_port {int dev; int print_id; } ;


 int ATA_QCFLAG_DMAMAP ;
 int DPRINTK (char*,unsigned int) ;
 int VPRINTK (char*,int ) ;
 unsigned int dma_map_sg (int ,int ,unsigned int,int ) ;

__attribute__((used)) static int ata_sg_setup(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 unsigned int n_elem;

 VPRINTK("ENTER, ata%u\n", ap->print_id);

 n_elem = dma_map_sg(ap->dev, qc->sg, qc->n_elem, qc->dma_dir);
 if (n_elem < 1)
  return -1;

 DPRINTK("%d sg elements mapped\n", n_elem);
 qc->orig_n_elem = qc->n_elem;
 qc->n_elem = n_elem;
 qc->flags |= ATA_QCFLAG_DMAMAP;

 return 0;
}
