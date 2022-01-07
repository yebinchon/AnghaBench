
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 scalar_t__ QLCNIC_FWERROR_CODE (int) ;
 scalar_t__ QLCNIC_FWERROR_FAN_FAILURE ;
 int QLCNIC_PEG_HALT_STATUS1 ;
 int QLCNIC_RCODE_FATAL_ERROR ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int dev_err (int *,char*,...) ;

__attribute__((used)) static int qlcnic_83xx_idc_check_fan_failure(struct qlcnic_adapter *adapter)
{
 u32 status;

 status = QLC_SHARED_REG_RD32(adapter, QLCNIC_PEG_HALT_STATUS1);

 if (status & QLCNIC_RCODE_FATAL_ERROR) {
  dev_err(&adapter->pdev->dev,
   "peg halt status1=0x%x\n", status);
  if (QLCNIC_FWERROR_CODE(status) == QLCNIC_FWERROR_FAN_FAILURE) {
   dev_err(&adapter->pdev->dev,
    "On board active cooling fan failed. "
    "Device has been halted.\n");
   dev_err(&adapter->pdev->dev,
    "Replace the adapter.\n");
   return -EIO;
  }
 }

 return 0;
}
