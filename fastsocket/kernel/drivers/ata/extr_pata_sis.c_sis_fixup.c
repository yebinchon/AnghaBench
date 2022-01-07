
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sis_chipset {int * info; } ;
struct pci_dev {int dummy; } ;


 int BUG () ;
 int PCI_CLASS_PROG ;
 int PCI_LATENCY_TIMER ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 int sis_info ;
 int sis_info100 ;
 int sis_info100_early ;
 int sis_info133 ;
 int sis_info133_early ;
 int sis_info33 ;
 int sis_info66 ;

__attribute__((used)) static void sis_fixup(struct pci_dev *pdev, struct sis_chipset *sis)
{
 u16 regw;
 u8 reg;

 if (sis->info == &sis_info133) {
  pci_read_config_word(pdev, 0x50, &regw);
  if (regw & 0x08)
   pci_write_config_word(pdev, 0x50, regw & ~0x08);
  pci_read_config_word(pdev, 0x52, &regw);
  if (regw & 0x08)
   pci_write_config_word(pdev, 0x52, regw & ~0x08);
  return;
 }

 if (sis->info == &sis_info133_early || sis->info == &sis_info100) {

  pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 0x80);

  pci_read_config_byte(pdev, 0x49, &reg);
  if (!(reg & 0x01))
   pci_write_config_byte(pdev, 0x49, reg | 0x01);
  return;
 }

 if (sis->info == &sis_info66 || sis->info == &sis_info100_early) {

  pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 0x80);

  pci_read_config_byte(pdev, 0x52, &reg);
  if (!(reg & 0x04))
   pci_write_config_byte(pdev, 0x52, reg | 0x04);
  return;
 }

 if (sis->info == &sis_info33) {
  pci_read_config_byte(pdev, PCI_CLASS_PROG, &reg);
  if (( reg & 0x0F ) != 0x00)
   pci_write_config_byte(pdev, PCI_CLASS_PROG, reg & 0xF0);

 }

 if (sis->info == &sis_info || sis->info == &sis_info33) {


  pci_read_config_byte(pdev, 0x52, &reg);
  if (!(reg & 0x08))
   pci_write_config_byte(pdev, 0x52, reg|0x08);
  return;
 }

 BUG();
}
