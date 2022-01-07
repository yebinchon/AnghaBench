
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct legacy_data {int* clock; scalar_t__ timing; scalar_t__ fast; } ;
struct ata_timing {int recover; int active; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {size_t devno; scalar_t__ class; int pio_mode; } ;
struct TYPE_2__ {struct legacy_data* private_data; } ;


 scalar_t__ ATA_DEV_ATA ;
 int ata_timing_compute (struct ata_device*,int ,struct ata_timing*,int,int) ;
 int clamp_val (int ,int,int) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void qdi6580dp_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct ata_timing t;
 struct legacy_data *ld_qdi = ap->host->private_data;
 int active, recovery;
 u8 timing;


 ata_timing_compute(adev, adev->pio_mode, &t, 30303, 1000);

 if (ld_qdi->fast) {
  active = 8 - clamp_val(t.active, 1, 8);
  recovery = 18 - clamp_val(t.recover, 3, 18);
 } else {
  active = 9 - clamp_val(t.active, 2, 9);
  recovery = 15 - clamp_val(t.recover, 0, 15);
 }
 timing = (recovery << 4) | active | 0x08;

 ld_qdi->clock[adev->devno] = timing;

 outb(timing, ld_qdi->timing + 2 * ap->port_no);

 if (adev->class != ATA_DEV_ATA)
  outb(0x5F, ld_qdi->timing + 3);
}
