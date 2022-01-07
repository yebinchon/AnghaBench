
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_timing {int dummy; } ;
struct ata_port {int dummy; } ;
struct ata_device {scalar_t__ class; scalar_t__ dma_mode; scalar_t__ pio_mode; } ;


 scalar_t__ ATA_DEV_ATA ;
 int ATA_TIMING_8BIT ;
 int ATA_TIMING_SETUP ;
 int ali_fifo_control (struct ata_port*,struct ata_device*,int) ;
 int ali_program_modes (struct ata_port*,struct ata_device*,struct ata_timing*,int ) ;
 struct ata_device* ata_dev_pair (struct ata_device*) ;
 int ata_timing_compute (struct ata_device*,scalar_t__,struct ata_timing*,unsigned long,int) ;
 int ata_timing_merge (struct ata_timing*,struct ata_timing*,struct ata_timing*,int) ;

__attribute__((used)) static void ali_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct ata_device *pair = ata_dev_pair(adev);
 struct ata_timing t;
 unsigned long T = 1000000000 / 33333;

 ata_timing_compute(adev, adev->pio_mode, &t, T, 1);
 if (pair) {
  struct ata_timing p;
  ata_timing_compute(pair, pair->pio_mode, &p, T, 1);
  ata_timing_merge(&p, &t, &t, ATA_TIMING_SETUP|ATA_TIMING_8BIT);
  if (pair->dma_mode) {
   ata_timing_compute(pair, pair->dma_mode, &p, T, 1);
   ata_timing_merge(&p, &t, &t, ATA_TIMING_SETUP|ATA_TIMING_8BIT);
  }
 }


 if (adev->class != ATA_DEV_ATA)
  ali_fifo_control(ap, adev, 0x00);
 ali_program_modes(ap, adev, &t, 0);
 if (adev->class == ATA_DEV_ATA)
  ali_fifo_control(ap, adev, 0x05);

}
