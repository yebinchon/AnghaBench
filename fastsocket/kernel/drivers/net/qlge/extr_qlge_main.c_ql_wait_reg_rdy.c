
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int ndev; } ;


 int EIO ;
 int ETIMEDOUT ;
 int UDELAY_COUNT ;
 int UDELAY_DELAY ;
 int netif_alert (struct ql_adapter*,int ,int ,char*,int,...) ;
 int probe ;
 int ql_read32 (struct ql_adapter*,int) ;
 int udelay (int ) ;

int ql_wait_reg_rdy(struct ql_adapter *qdev, u32 reg, u32 bit, u32 err_bit)
{
 u32 temp;
 int count = UDELAY_COUNT;

 while (count) {
  temp = ql_read32(qdev, reg);


  if (temp & err_bit) {
   netif_alert(qdev, probe, qdev->ndev,
        "register 0x%.08x access error, value = 0x%.08x!.\n",
        reg, temp);
   return -EIO;
  } else if (temp & bit)
   return 0;
  udelay(UDELAY_DELAY);
  count--;
 }
 netif_alert(qdev, probe, qdev->ndev,
      "Timed out waiting for reg %x to come ready.\n", reg);
 return -ETIMEDOUT;
}
