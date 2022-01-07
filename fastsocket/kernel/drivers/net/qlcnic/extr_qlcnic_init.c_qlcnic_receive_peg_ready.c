
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 scalar_t__ PHAN_PEG_RCV_INITIALIZED ;
 int QLCNIC_RCVPEG_CHECK_DELAY ;
 int QLCNIC_RCVPEG_CHECK_RETRY_COUNT ;
 int QLCNIC_RCVPEG_STATE ;
 scalar_t__ QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int dev_err (int *,char*,scalar_t__) ;
 int msleep (int ) ;

__attribute__((used)) static int
qlcnic_receive_peg_ready(struct qlcnic_adapter *adapter)
{
 u32 val;
 int retries = QLCNIC_RCVPEG_CHECK_RETRY_COUNT;

 do {
  val = QLC_SHARED_REG_RD32(adapter, QLCNIC_RCVPEG_STATE);

  if (val == PHAN_PEG_RCV_INITIALIZED)
   return 0;

  msleep(QLCNIC_RCVPEG_CHECK_DELAY);

 } while (--retries);

 if (!retries) {
  dev_err(&adapter->pdev->dev, "Receive Peg initialization not "
         "complete, state: 0x%x.\n", val);
  return -EIO;
 }

 return 0;
}
