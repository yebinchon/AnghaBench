
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pata_icside_state {int dma; } ;
struct ata_queued_cmd {struct ata_port* ap; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct pata_icside_state* private_data; } ;


 int ata_sff_dma_pause (struct ata_port*) ;
 int disable_dma (int ) ;

__attribute__((used)) static void pata_icside_bmdma_stop(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct pata_icside_state *state = ap->host->private_data;

 disable_dma(state->dma);


 ata_sff_dma_pause(ap);
}
