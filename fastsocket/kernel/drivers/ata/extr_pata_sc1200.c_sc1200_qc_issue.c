
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {struct ata_device* private_data; } ;
struct ata_device {int dummy; } ;


 scalar_t__ ata_dma_enabled (struct ata_device*) ;
 unsigned int ata_sff_qc_issue (struct ata_queued_cmd*) ;
 scalar_t__ ata_using_udma (struct ata_device*) ;
 int sc1200_set_dmamode (struct ata_port*,struct ata_device*) ;

__attribute__((used)) static unsigned int sc1200_qc_issue(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ata_device *adev = qc->dev;
 struct ata_device *prev = ap->private_data;


 if (ata_dma_enabled(adev) && adev != prev && prev != ((void*)0)) {

  if ((ata_using_udma(adev) && !ata_using_udma(prev)) ||
      (ata_using_udma(prev) && !ata_using_udma(adev)))

       sc1200_set_dmamode(ap, adev);
 }

 return ata_sff_qc_issue(qc);
}
