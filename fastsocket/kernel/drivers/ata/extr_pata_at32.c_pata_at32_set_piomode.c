
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_timing {int dummy; } ;
struct ata_port {int dev; TYPE_1__* host; } ;
struct ata_device {int pio_mode; } ;
struct at32_ide_info {int dummy; } ;
struct TYPE_2__ {struct at32_ide_info* private_data; } ;


 int ata_timing_compute (struct ata_device*,int ,struct ata_timing*,int,int ) ;
 int dev_warn (int ,char*,int) ;
 int pata_at32_setup_timing (int ,struct at32_ide_info*,struct ata_timing*) ;

__attribute__((used)) static void pata_at32_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct ata_timing timing;
 struct at32_ide_info *info = ap->host->private_data;

 int ret;


 ret = ata_timing_compute(adev, adev->pio_mode, &timing, 1000, 0);
 if (ret) {
  dev_warn(ap->dev, "Failed to compute ATA timing %d\n", ret);
  return;
 }


 ret = pata_at32_setup_timing(ap->dev, info, &timing);
 if (ret) {
  dev_warn(ap->dev, "Failed to setup ATA timing %d\n", ret);
  return;
 }
}
