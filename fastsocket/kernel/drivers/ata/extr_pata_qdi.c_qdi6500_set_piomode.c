
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qdi_data {int* clock; int timing; scalar_t__ fast; } ;
struct ata_timing {int recover; int active; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {size_t devno; int pio_mode; } ;
struct TYPE_2__ {struct qdi_data* private_data; } ;


 int ata_timing_compute (struct ata_device*,int ,struct ata_timing*,int,int) ;
 int clamp_val (int ,int,int) ;
 int outb (int,int ) ;

__attribute__((used)) static void qdi6500_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct ata_timing t;
 struct qdi_data *qdi = ap->host->private_data;
 int active, recovery;
 u8 timing;


 ata_timing_compute(adev, adev->pio_mode, &t, 30303, 1000);

 if (qdi->fast) {
  active = 8 - clamp_val(t.active, 1, 8);
  recovery = 18 - clamp_val(t.recover, 3, 18);
 } else {
  active = 9 - clamp_val(t.active, 2, 9);
  recovery = 15 - clamp_val(t.recover, 0, 15);
 }
 timing = (recovery << 4) | active | 0x08;

 qdi->clock[adev->devno] = timing;

 outb(timing, qdi->timing);
}
