
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipr_ioasa_gata {int hob_lbah; int hob_lbam; int hob_lbal; int hob_nsect; int status; int device; int lbah; int lbam; int lbal; int nsect; int error; } ;
struct ipr_sata_port {struct ipr_ioasa_gata ioasa; } ;
struct ata_taskfile {int hob_lbah; int hob_lbam; int hob_lbal; int hob_nsect; int command; int device; int lbah; int lbam; int lbal; int nsect; int feature; } ;
struct ata_queued_cmd {struct ata_taskfile result_tf; TYPE_1__* ap; } ;
struct TYPE_2__ {struct ipr_sata_port* private_data; } ;



__attribute__((used)) static bool ipr_qc_fill_rtf(struct ata_queued_cmd *qc)
{
 struct ipr_sata_port *sata_port = qc->ap->private_data;
 struct ipr_ioasa_gata *g = &sata_port->ioasa;
 struct ata_taskfile *tf = &qc->result_tf;

 tf->feature = g->error;
 tf->nsect = g->nsect;
 tf->lbal = g->lbal;
 tf->lbam = g->lbam;
 tf->lbah = g->lbah;
 tf->device = g->device;
 tf->command = g->status;
 tf->hob_nsect = g->hob_nsect;
 tf->hob_lbal = g->hob_lbal;
 tf->hob_lbam = g->hob_lbam;
 tf->hob_lbah = g->hob_lbah;

 return 1;
}
