
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct legacy_data {int timing; } ;
struct ata_timing {int setup; int recover; int active; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ class; int pio_mode; } ;
struct TYPE_2__ {struct legacy_data* private_data; } ;


 scalar_t__ ATA_DEV_ATA ;
 int ata_pio_need_iordy (struct ata_device*) ;
 int ata_timing_compute (struct ata_device*,int ,struct ata_timing*,int,int) ;
 int clamp_val (int ,int,int) ;
 int winbond_readcfg (int ,int) ;
 int winbond_writecfg (int ,int,int) ;

__attribute__((used)) static void winbond_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct ata_timing t;
 struct legacy_data *ld_winbond = ap->host->private_data;
 int active, recovery;
 u8 reg;
 int timing = 0x88 + (ap->port_no * 4) + (adev->devno * 2);

 reg = winbond_readcfg(ld_winbond->timing, 0x81);


 if (reg & 0x40)
  ata_timing_compute(adev, adev->pio_mode, &t, 20000, 1000);
 else
  ata_timing_compute(adev, adev->pio_mode, &t, 30303, 1000);

 active = (clamp_val(t.active, 3, 17) - 1) & 0x0F;
 recovery = (clamp_val(t.recover, 1, 15) + 1) & 0x0F;
 timing = (active << 4) | recovery;
 winbond_writecfg(ld_winbond->timing, timing, reg);



 reg = 0x35;
 if (adev->class != ATA_DEV_ATA)
  reg |= 0x08;
 if (!ata_pio_need_iordy(adev))
  reg |= 0x02;
 reg |= (clamp_val(t.setup, 0, 3) << 6);
 winbond_writecfg(ld_winbond->timing, timing + 1, reg);
}
