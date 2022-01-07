
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_5__ {int dev; } ;


 size_t ATA_100 ;
 size_t ATA_133 ;
 size_t const XFER_UDMA_0 ;
 int** cvs_time_value ;
 int** cycle_time_value ;
 int pci_read_config_dword (struct pci_dev*,size_t,int*) ;
 int pci_write_config_dword (struct pci_dev*,size_t,int) ;
 size_t sis_ata133_get_base (TYPE_2__*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sis_ata133_program_udma_timings(ide_drive_t *drive, const u8 mode)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);
 u32 regdw = 0;
 u8 drive_pci = sis_ata133_get_base(drive), clk, idx;

 pci_read_config_dword(dev, drive_pci, &regdw);

 regdw |= 0x04;
 regdw &= 0xfffff00f;

 clk = (regdw & 0x08) ? ATA_133 : ATA_100;
 idx = mode - XFER_UDMA_0;
 regdw |= cycle_time_value[clk][idx] << 4;
 regdw |= cvs_time_value[clk][idx] << 8;

 pci_write_config_dword(dev, drive_pci, regdw);
}
