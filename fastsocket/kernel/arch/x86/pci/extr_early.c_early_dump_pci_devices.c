
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int PCI_CLASS_REVISION ;
 int PCI_HEADER_TYPE ;
 int early_dump_pci_device (unsigned int,unsigned int,unsigned int) ;
 int early_pci_allowed () ;
 int read_pci_config (unsigned int,unsigned int,unsigned int,int ) ;
 int read_pci_config_byte (unsigned int,unsigned int,unsigned int,int ) ;

void early_dump_pci_devices(void)
{
 unsigned bus, slot, func;

 if (!early_pci_allowed())
  return;

 for (bus = 0; bus < 256; bus++) {
  for (slot = 0; slot < 32; slot++) {
   for (func = 0; func < 8; func++) {
    u32 class;
    u8 type;

    class = read_pci_config(bus, slot, func,
       PCI_CLASS_REVISION);
    if (class == 0xffffffff)
     continue;

    early_dump_pci_device(bus, slot, func);

    if (func == 0) {
     type = read_pci_config_byte(bus, slot,
            func,
              PCI_HEADER_TYPE);
     if (!(type & 0x80))
      break;
    }
   }
  }
 }
}
