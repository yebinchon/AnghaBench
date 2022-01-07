
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {struct ata_device* private_data; } ;
struct ata_device {scalar_t__ pio_mode; } ;


 unsigned int ata_sff_qc_issue (struct ata_queued_cmd*) ;
 int ns87410_set_piomode (struct ata_port*,struct ata_device*) ;

__attribute__((used)) static unsigned int ns87410_qc_issue(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ata_device *adev = qc->dev;






 if (adev->pio_mode && adev != ap->private_data)
  ns87410_set_piomode(ap, adev);

 return ata_sff_qc_issue(qc);
}
