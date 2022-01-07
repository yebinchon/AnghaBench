
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int csr_config_rom_cpu; } ;
struct hpsb_host {struct ti_ohci* hostdata; } ;
typedef int __be32 ;


 int OHCI1394_BusOptions ;
 int OHCI1394_ConfigROMhdr ;
 int OHCI_CONFIG_ROM_LEN ;
 int be32_to_cpu (int ) ;
 int memcpy (int ,int *,int ) ;
 int reg_write (struct ti_ohci*,int ,int ) ;

__attribute__((used)) static void ohci_set_hw_config_rom(struct hpsb_host *host, __be32 *config_rom)
{
 struct ti_ohci *ohci = host->hostdata;

 reg_write(ohci, OHCI1394_ConfigROMhdr, be32_to_cpu(config_rom[0]));
 reg_write(ohci, OHCI1394_BusOptions, be32_to_cpu(config_rom[2]));

 memcpy(ohci->csr_config_rom_cpu, config_rom, OHCI_CONFIG_ROM_LEN);
}
