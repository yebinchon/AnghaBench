
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {int pdev; TYPE_1__ params; } ;


 int A_PL_RST ;
 int F_CRSTWRM ;
 int F_CRSTWRMMODE ;
 scalar_t__ T3_REV_B2 ;
 scalar_t__ is_pcie (struct adapter*) ;
 int msleep (int) ;
 int pci_read_config_word (int ,int,int*) ;
 int pci_restore_state (int ) ;
 int pci_save_state (int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;

int t3_reset_adapter(struct adapter *adapter)
{
 int i, save_and_restore_pcie =
     adapter->params.rev < T3_REV_B2 && is_pcie(adapter);
 uint16_t devid = 0;

 if (save_and_restore_pcie)
  pci_save_state(adapter->pdev);
 t3_write_reg(adapter, A_PL_RST, F_CRSTWRM | F_CRSTWRMMODE);





 for (i = 0; i < 10; i++) {
  msleep(50);
  pci_read_config_word(adapter->pdev, 0x00, &devid);
  if (devid == 0x1425)
   break;
 }

 if (devid != 0x1425)
  return -1;

 if (save_and_restore_pcie)
  pci_restore_state(adapter->pdev);
 return 0;
}
