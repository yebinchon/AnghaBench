
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ahd_dev_softc_t ;


 int panic (char*) ;
 int pci_write_config_byte (int ,int,int ) ;
 int pci_write_config_dword (int ,int,int ) ;
 int pci_write_config_word (int ,int,int ) ;

void
ahd_pci_write_config(ahd_dev_softc_t pci, int reg, uint32_t value, int width)
{
 switch (width) {
 case 1:
  pci_write_config_byte(pci, reg, value);
  break;
 case 2:
  pci_write_config_word(pci, reg, value);
  break;
 case 4:
  pci_write_config_dword(pci, reg, value);
  break;
 default:
  panic("ahd_pci_write_config: Write size too big");

 }
}
