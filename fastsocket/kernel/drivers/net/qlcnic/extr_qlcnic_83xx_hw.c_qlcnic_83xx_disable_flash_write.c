
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_3__ {int write_statusreg_cmd; int write_disable_bits; } ;
struct TYPE_4__ {TYPE_1__ fdt; } ;


 int EIO ;
 int QLC_83XX_FLASH_ADDR ;
 int QLC_83XX_FLASH_CONTROL ;
 int QLC_83XX_FLASH_FDT_WRITE_DEF_SIG ;
 int QLC_83XX_FLASH_SECOND_ERASE_MS_VAL ;
 int QLC_83XX_FLASH_WRDATA ;
 int qlcnic_83xx_poll_flash_status_reg (struct qlcnic_adapter*) ;
 int qlcnic_83xx_wrt_reg_indirect (struct qlcnic_adapter*,int ,int) ;

int qlcnic_83xx_disable_flash_write(struct qlcnic_adapter *adapter)
{
 int ret;

 qlcnic_83xx_wrt_reg_indirect(adapter, QLC_83XX_FLASH_ADDR,
         (QLC_83XX_FLASH_FDT_WRITE_DEF_SIG |
         adapter->ahw->fdt.write_statusreg_cmd));
 qlcnic_83xx_wrt_reg_indirect(adapter, QLC_83XX_FLASH_WRDATA,
         adapter->ahw->fdt.write_disable_bits);
 qlcnic_83xx_wrt_reg_indirect(adapter, QLC_83XX_FLASH_CONTROL,
         QLC_83XX_FLASH_SECOND_ERASE_MS_VAL);
 ret = qlcnic_83xx_poll_flash_status_reg(adapter);
 if (ret)
  return -EIO;

 return 0;
}
