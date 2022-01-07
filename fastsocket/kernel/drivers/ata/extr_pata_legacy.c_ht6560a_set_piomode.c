
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_timing {int recover; int active; } ;
struct TYPE_2__ {int status_addr; int device_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;
struct ata_device {int pio_mode; } ;


 int ata_timing_compute (struct ata_device*,int ,struct ata_timing*,int,int) ;
 int clamp_val (int ,int,int) ;
 int inb (int) ;
 int ioread8 (int ) ;
 int iowrite8 (int,int ) ;

__attribute__((used)) static void ht6560a_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 u8 active, recover;
 struct ata_timing t;


 ata_timing_compute(adev, adev->pio_mode, &t, 20000, 1000);

 active = clamp_val(t.active, 2, 15);
 recover = clamp_val(t.recover, 4, 15);

 inb(0x3E6);
 inb(0x3E6);
 inb(0x3E6);
 inb(0x3E6);

 iowrite8(recover << 4 | active, ap->ioaddr.device_addr);
 ioread8(ap->ioaddr.status_addr);
}
