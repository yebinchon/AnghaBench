
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {unsigned int vpd_cap_addr; } ;
struct TYPE_4__ {TYPE_1__ pci; } ;
struct adapter {int pdev; TYPE_2__ params; } ;
typedef int __le32 ;


 int CH_ERR (struct adapter*,char*,int) ;
 int EEPROMSIZE ;
 int EEPROM_MAX_POLL ;
 int EEPROM_STAT_ADDR ;
 int EINVAL ;
 int EIO ;
 scalar_t__ PCI_VPD_ADDR ;
 int PCI_VPD_ADDR_F ;
 scalar_t__ PCI_VPD_DATA ;
 int le32_to_cpu (int ) ;
 int msleep (int) ;
 int pci_read_config_word (int ,scalar_t__,int*) ;
 int pci_write_config_dword (int ,scalar_t__,int ) ;
 int pci_write_config_word (int ,scalar_t__,int) ;

int t3_seeprom_write(struct adapter *adapter, u32 addr, __le32 data)
{
 u16 val;
 int attempts = EEPROM_MAX_POLL;
 unsigned int base = adapter->params.pci.vpd_cap_addr;

 if ((addr >= EEPROMSIZE && addr != EEPROM_STAT_ADDR) || (addr & 3))
  return -EINVAL;

 pci_write_config_dword(adapter->pdev, base + PCI_VPD_DATA,
          le32_to_cpu(data));
 pci_write_config_word(adapter->pdev,base + PCI_VPD_ADDR,
         addr | PCI_VPD_ADDR_F);
 do {
  msleep(1);
  pci_read_config_word(adapter->pdev, base + PCI_VPD_ADDR, &val);
 } while ((val & PCI_VPD_ADDR_F) && --attempts);

 if (val & PCI_VPD_ADDR_F) {
  CH_ERR(adapter, "write to EEPROM address 0x%x failed\n", addr);
  return -EIO;
 }
 return 0;
}
