
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int pdev; int name; } ;
typedef TYPE_1__ adapter_t ;
typedef int __le32 ;


 int A_PCICFG_VPD_ADDR ;
 int A_PCICFG_VPD_DATA ;
 int CH_ERR (char*,int ,int) ;
 int EEPROMSIZE ;
 int EEPROM_MAX_POLL ;
 int EINVAL ;
 int EIO ;
 int F_VPD_OP_FLAG ;
 int cpu_to_le32 (int) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_read_config_word (int ,int ,int*) ;
 int pci_write_config_word (int ,int ,int) ;
 int udelay (int) ;

int t1_seeprom_read(adapter_t *adapter, u32 addr, __le32 *data)
{
 int i = EEPROM_MAX_POLL;
 u16 val;
 u32 v;

 if (addr >= EEPROMSIZE || (addr & 3))
  return -EINVAL;

 pci_write_config_word(adapter->pdev, A_PCICFG_VPD_ADDR, (u16)addr);
 do {
  udelay(50);
  pci_read_config_word(adapter->pdev, A_PCICFG_VPD_ADDR, &val);
 } while (!(val & F_VPD_OP_FLAG) && --i);

 if (!(val & F_VPD_OP_FLAG)) {
  CH_ERR("%s: reading EEPROM address 0x%x failed\n",
         adapter->name, addr);
  return -EIO;
 }
 pci_read_config_dword(adapter->pdev, A_PCICFG_VPD_DATA, &v);
 *data = cpu_to_le32(v);
 return 0;
}
