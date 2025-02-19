
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 int QLC_83XX_DEFAULT_MODE ;
 int QLC_83XX_VIRTUAL_NIC_MODE ;
 scalar_t__ qlcnic_83xx_config_default_opmode (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_config_vnic_opmode (struct qlcnic_adapter*) ;
 int qlcnic_83xx_get_nic_configuration (struct qlcnic_adapter*) ;

int qlcnic_83xx_configure_opmode(struct qlcnic_adapter *adapter)
{
 int ret;

 ret = qlcnic_83xx_get_nic_configuration(adapter);
 if (ret == -EIO)
  return -EIO;

 if (ret == QLC_83XX_VIRTUAL_NIC_MODE) {
  if (qlcnic_83xx_config_vnic_opmode(adapter))
   return -EIO;
 } else if (ret == QLC_83XX_DEFAULT_MODE) {
  if (qlcnic_83xx_config_default_opmode(adapter))
   return -EIO;
 }

 return 0;
}
