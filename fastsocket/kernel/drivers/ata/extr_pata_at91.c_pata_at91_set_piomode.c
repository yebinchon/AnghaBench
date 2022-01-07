
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_timing {int dummy; } ;
struct ata_port {int dev; TYPE_1__* host; } ;
struct ata_device {int pio_mode; } ;
struct at91_ide_info {int dummy; } ;
struct TYPE_2__ {struct at91_ide_info* private_data; } ;


 int ata_timing_compute (struct ata_device*,int ,struct ata_timing*,int,int ) ;
 int dev_warn (int ,char*,int) ;
 struct ata_timing initial_timing ;
 int set_smc_mode (struct at91_ide_info*) ;
 int set_smc_timing (int ,struct at91_ide_info*,struct ata_timing*) ;

__attribute__((used)) static void pata_at91_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct at91_ide_info *info = ap->host->private_data;
 struct ata_timing timing;
 int ret;


 ret = ata_timing_compute(adev, adev->pio_mode, &timing, 1000, 0);
 if (ret) {
  dev_warn(ap->dev, "Failed to compute ATA timing %d, 				set PIO_0 timing\n", ret);

  set_smc_timing(ap->dev, info, &initial_timing);
 } else {
  set_smc_timing(ap->dev, info, &timing);
 }


 set_smc_mode(info);

 return;
}
