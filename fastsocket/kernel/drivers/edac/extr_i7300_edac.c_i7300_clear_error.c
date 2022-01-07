
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {int pci_dev_16_1_fsb_addr_map; int pci_dev_16_2_fsb_err_regs; } ;


 int FERR_FAT_FBD ;
 int FERR_GLOBAL_HI ;
 int FERR_GLOBAL_LO ;
 int FERR_NF_FBD ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static void i7300_clear_error(struct mem_ctl_info *mci)
{
 struct i7300_pvt *pvt = mci->pvt_info;
 u32 value;






 pci_read_config_dword(pvt->pci_dev_16_2_fsb_err_regs,
         FERR_GLOBAL_HI, &value);
 pci_write_config_dword(pvt->pci_dev_16_2_fsb_err_regs,
         FERR_GLOBAL_HI, value);

 pci_read_config_dword(pvt->pci_dev_16_2_fsb_err_regs,
         FERR_GLOBAL_LO, &value);
 pci_write_config_dword(pvt->pci_dev_16_2_fsb_err_regs,
         FERR_GLOBAL_LO, value);


 pci_read_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
         FERR_FAT_FBD, &value);
 pci_write_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
         FERR_FAT_FBD, value);

 pci_read_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
         FERR_NF_FBD, &value);
 pci_write_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
         FERR_NF_FBD, value);
}
