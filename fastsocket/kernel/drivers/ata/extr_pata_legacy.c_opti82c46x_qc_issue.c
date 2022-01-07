
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* private_data; } ;


 unsigned int ata_sff_qc_issue (struct ata_queued_cmd*) ;
 int opti82c46x_set_piomode (struct ata_port*,struct ata_device*) ;

__attribute__((used)) static unsigned int opti82c46x_qc_issue(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ata_device *adev = qc->dev;



 if (ap->host->private_data != ap->host
     && ap->host->private_data != ((void*)0))
  opti82c46x_set_piomode(ap, adev);

 return ata_sff_qc_issue(qc);
}
