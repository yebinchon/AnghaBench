
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pata_icside_state {int dma; TYPE_2__* port; int ioc_base; } ;
struct TYPE_10__ {unsigned int flags; } ;
struct ata_queued_cmd {TYPE_5__ tf; int n_elem; int sg; TYPE_3__* dev; struct ata_port* ap; } ;
struct ata_port {size_t port_no; TYPE_4__* ops; TYPE_1__* host; } ;
struct TYPE_9__ {int (* sff_exec_command ) (struct ata_port*,TYPE_5__*) ;} ;
struct TYPE_8__ {size_t devno; } ;
struct TYPE_7__ {int * speed; int port_sel; } ;
struct TYPE_6__ {struct pata_icside_state* private_data; } ;


 unsigned int ATA_TFLAG_WRITE ;
 int BUG_ON (int ) ;
 int DMA_MODE_READ ;
 int DMA_MODE_WRITE ;
 int dma_channel_active (int ) ;
 int set_dma_mode (int ,int ) ;
 int set_dma_sg (int ,int ,int ) ;
 int set_dma_speed (int ,int ) ;
 int stub1 (struct ata_port*,TYPE_5__*) ;
 int writeb (int ,int ) ;

__attribute__((used)) static void pata_icside_bmdma_setup(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct pata_icside_state *state = ap->host->private_data;
 unsigned int write = qc->tf.flags & ATA_TFLAG_WRITE;





 BUG_ON(dma_channel_active(state->dma));




 writeb(state->port[ap->port_no].port_sel, state->ioc_base);

 set_dma_speed(state->dma, state->port[ap->port_no].speed[qc->dev->devno]);
 set_dma_sg(state->dma, qc->sg, qc->n_elem);
 set_dma_mode(state->dma, write ? DMA_MODE_WRITE : DMA_MODE_READ);


 ap->ops->sff_exec_command(ap, &qc->tf);
}
