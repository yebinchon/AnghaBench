
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int device_addr; int status_addr; } ;
struct TYPE_8__ {TYPE_1__ io_ports; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_9__ {scalar_t__ media; int dev_flags; int select; int name; TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;


 int ATA_DEVICE_OBS ;
 int HT_CONFIG (TYPE_3__*) ;
 int HT_CONFIG_PORT ;
 int HT_PREFETCH_MODE ;
 int HT_TIMING (TYPE_3__*) ;
 int IDE_DFLAG_PRESENT ;
 scalar_t__ ide_disk ;
 int inb (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int outb (int,int ) ;
 int printk (char*,int ,int,int) ;

__attribute__((used)) static void ht6560b_dev_select(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 unsigned long flags;
 static u8 current_select = 0;
 static u8 current_timing = 0;
 u8 select, timing;

 local_irq_save(flags);

 select = HT_CONFIG(drive);
 timing = HT_TIMING(drive);





 if (drive->media != ide_disk ||
     (drive->dev_flags & IDE_DFLAG_PRESENT) == 0)
  select |= HT_PREFETCH_MODE;

 if (select != current_select || timing != current_timing) {
  current_select = select;
  current_timing = timing;
  (void)inb(HT_CONFIG_PORT);
  (void)inb(HT_CONFIG_PORT);
  (void)inb(HT_CONFIG_PORT);
  (void)inb(HT_CONFIG_PORT);
  outb(select, HT_CONFIG_PORT);



  outb(timing, hwif->io_ports.device_addr);
  (void)inb(hwif->io_ports.status_addr);




 }
 local_irq_restore(flags);

 outb(drive->select | ATA_DEVICE_OBS, hwif->io_ports.device_addr);
}
