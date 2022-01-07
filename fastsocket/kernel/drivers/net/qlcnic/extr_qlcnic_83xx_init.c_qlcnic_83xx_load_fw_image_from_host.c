
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_3__* pdev; TYPE_2__* ahw; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int fw; } ;
struct TYPE_5__ {TYPE_1__ fw_info; } ;


 int EIO ;
 int QLCNIC_FW_IMG_VALID ;
 int QLC_83XX_BOOT_FROM_FILE ;
 int QLC_83XX_BOOT_FROM_FLASH ;
 int QLC_83XX_FW_FILE_NAME ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ qlcnic_83xx_copy_fw_file (struct qlcnic_adapter*) ;
 scalar_t__ request_firmware (int *,int ,int *) ;

__attribute__((used)) static int qlcnic_83xx_load_fw_image_from_host(struct qlcnic_adapter *adapter)
{
 int err = -EIO;

 if (request_firmware(&adapter->ahw->fw_info.fw,
        QLC_83XX_FW_FILE_NAME, &(adapter->pdev->dev))) {
  dev_err(&adapter->pdev->dev,
   "No file FW image, loading flash FW image.\n");
  QLC_SHARED_REG_WR32(adapter, QLCNIC_FW_IMG_VALID,
        QLC_83XX_BOOT_FROM_FLASH);
 } else {
  if (qlcnic_83xx_copy_fw_file(adapter))
   return err;
  QLC_SHARED_REG_WR32(adapter, QLCNIC_FW_IMG_VALID,
        QLC_83XX_BOOT_FROM_FILE);
 }

 return 0;
}
