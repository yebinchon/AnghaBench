
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int ahw; } ;


 int EIO ;
 int QLCNIC_FW_IMG_VALID ;
 int QLCRDX (int ,int ) ;
 int QLC_83XX_BOOT_FROM_FLASH ;
 int QLC_83XX_IDC_CTRL ;
 int QLC_83XX_IDC_GRACEFULL_RESET ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int ) ;
 scalar_t__ qlcnic_83xx_check_hw_status (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_copy_bootloader (struct qlcnic_adapter*) ;
 int qlcnic_83xx_init_hw (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_load_fw_image_from_host (struct qlcnic_adapter*) ;
 int qlcnic_83xx_start_hw (struct qlcnic_adapter*) ;
 int qlcnic_83xx_stop_hw (struct qlcnic_adapter*) ;
 int qlcnic_dump_fw (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_load_fw_file ;

__attribute__((used)) static int qlcnic_83xx_restart_hw(struct qlcnic_adapter *adapter)
{
 u32 val;
 int err = -EIO;

 qlcnic_83xx_stop_hw(adapter);


 val = QLCRDX(adapter->ahw, QLC_83XX_IDC_CTRL);
 if (!(val & QLC_83XX_IDC_GRACEFULL_RESET))
  qlcnic_dump_fw(adapter);
 qlcnic_83xx_init_hw(adapter);

 if (qlcnic_83xx_copy_bootloader(adapter))
  return err;

 if (qlcnic_load_fw_file) {
  if (qlcnic_83xx_load_fw_image_from_host(adapter))
   return err;
 } else {
  QLC_SHARED_REG_WR32(adapter, QLCNIC_FW_IMG_VALID,
        QLC_83XX_BOOT_FROM_FLASH);
 }

 qlcnic_83xx_start_hw(adapter);
 if (qlcnic_83xx_check_hw_status(adapter))
  return -EIO;

 return 0;
}
