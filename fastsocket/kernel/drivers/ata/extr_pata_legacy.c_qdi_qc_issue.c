
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct legacy_data {scalar_t__* clock; scalar_t__ last; scalar_t__ timing; } ;
struct ata_queued_cmd {struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {size_t devno; scalar_t__ pio_mode; } ;
struct TYPE_2__ {struct legacy_data* private_data; } ;


 unsigned int ata_sff_qc_issue (struct ata_queued_cmd*) ;
 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static unsigned int qdi_qc_issue(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ata_device *adev = qc->dev;
 struct legacy_data *ld_qdi = ap->host->private_data;

 if (ld_qdi->clock[adev->devno] != ld_qdi->last) {
  if (adev->pio_mode) {
   ld_qdi->last = ld_qdi->clock[adev->devno];
   outb(ld_qdi->clock[adev->devno], ld_qdi->timing +
       2 * ap->port_no);
  }
 }
 return ata_sff_qc_issue(qc);
}
