
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {struct ata_device* dev; struct ata_port* ap; int * scsicmd; } ;
struct ata_port {int dummy; } ;
struct ata_device {TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;


 struct ata_queued_cmd* ata_qc_new (struct ata_port*) ;
 int ata_qc_reinit (struct ata_queued_cmd*) ;

struct ata_queued_cmd *ata_qc_new_init(struct ata_device *dev)
{
 struct ata_port *ap = dev->link->ap;
 struct ata_queued_cmd *qc;

 qc = ata_qc_new(ap);
 if (qc) {
  qc->scsicmd = ((void*)0);
  qc->ap = ap;
  qc->dev = dev;

  ata_qc_reinit(qc);
 }

 return qc;
}
