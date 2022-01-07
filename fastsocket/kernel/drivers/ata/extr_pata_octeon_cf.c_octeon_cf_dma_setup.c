
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_cf_port {scalar_t__ dma_finished; } ;
struct ata_queued_cmd {int tf; int sg; int cursg; struct ata_port* ap; } ;
struct ata_port {TYPE_1__* ops; struct octeon_cf_port* private_data; } ;
struct TYPE_2__ {int (* sff_exec_command ) (struct ata_port*,int *) ;} ;


 int DPRINTK (char*) ;
 int stub1 (struct ata_port*,int *) ;

__attribute__((used)) static void octeon_cf_dma_setup(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct octeon_cf_port *cf_port;

 cf_port = ap->private_data;
 DPRINTK("ENTER\n");

 qc->cursg = qc->sg;
 cf_port->dma_finished = 0;
 ap->ops->sff_exec_command(ap, &qc->tf);
 DPRINTK("EXIT\n");
}
