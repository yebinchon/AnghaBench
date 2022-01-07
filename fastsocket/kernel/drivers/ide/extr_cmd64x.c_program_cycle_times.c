
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {size_t dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int dev; } ;






 int cmdprintk (char*,int,int const,...) ;
 int ide_pci_clk ;
 int pci_write_config_byte (struct pci_dev*,int const,int) ;
 int quantize_timing (int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void program_cycle_times (ide_drive_t *drive, int cycle_time, int active_time)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);
 int clock_time = 1000 / (ide_pci_clk ? ide_pci_clk : 33);
 u8 cycle_count, active_count, recovery_count, drwtim;
 static const u8 recovery_values[] =
  {15, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 0};
 static const u8 drwtim_regs[4] = {131, 130, 129, 128};

 cmdprintk("program_cycle_times parameters: total=%d, active=%d\n",
    cycle_time, active_time);

 cycle_count = quantize_timing( cycle_time, clock_time);
 active_count = quantize_timing(active_time, clock_time);
 recovery_count = cycle_count - active_count;





 if (recovery_count > 16) {
  active_count += recovery_count - 16;
  recovery_count = 16;
 }
 if (active_count > 16)
   active_count = 16;

 cmdprintk("Final counts: total=%d, active=%d, recovery=%d\n",
    cycle_count, active_count, recovery_count);




 recovery_count = recovery_values[recovery_count];
  active_count &= 0x0f;


 drwtim = (active_count << 4) | recovery_count;
 (void) pci_write_config_byte(dev, drwtim_regs[drive->dn], drwtim);
 cmdprintk("Write 0x%02x to reg 0x%x\n", drwtim, drwtim_regs[drive->dn]);
}
