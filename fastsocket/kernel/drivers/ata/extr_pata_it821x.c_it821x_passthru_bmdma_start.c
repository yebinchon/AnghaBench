
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct it821x_dev {scalar_t__* mwdma; scalar_t__* udma; scalar_t__ timing10; } ;
struct ata_queued_cmd {struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {struct it821x_dev* private_data; } ;
struct ata_device {int devno; } ;


 scalar_t__ MWDMA_OFF ;
 scalar_t__ UDMA_OFF ;
 int ata_bmdma_start (struct ata_queued_cmd*) ;
 int it821x_program (struct ata_port*,struct ata_device*,scalar_t__) ;
 int it821x_program_udma (struct ata_port*,struct ata_device*,scalar_t__) ;

__attribute__((used)) static void it821x_passthru_bmdma_start(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ata_device *adev = qc->dev;
 struct it821x_dev *itdev = ap->private_data;
 int unit = adev->devno;

 if (itdev->mwdma[unit] != MWDMA_OFF)
  it821x_program(ap, adev, itdev->mwdma[unit]);
 else if (itdev->udma[unit] != UDMA_OFF && itdev->timing10)
  it821x_program_udma(ap, adev, itdev->udma[unit]);
 ata_bmdma_start(qc);
}
