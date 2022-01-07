
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int QLCNIC_FLASH_LOCK_OWNER ;
 int QLCNIC_FLASH_UNLOCK ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int) ;

void qlcnic_83xx_unlock_flash(struct qlcnic_adapter *adapter)
{
 QLC_SHARED_REG_RD32(adapter, QLCNIC_FLASH_UNLOCK);
 QLC_SHARED_REG_WR32(adapter, QLCNIC_FLASH_LOCK_OWNER, 0xFF);
}
