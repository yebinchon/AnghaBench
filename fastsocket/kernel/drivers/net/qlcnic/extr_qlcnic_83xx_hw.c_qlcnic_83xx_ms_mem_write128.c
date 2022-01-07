
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int mem_lock; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ ADDR_IN_RANGE (int,int ,int ) ;
 int EIO ;
 int MAX_CTL_CHECK ;
 int QLCNIC_ADDR_DDR_NET ;
 int QLCNIC_ADDR_DDR_NET_MAX ;
 int QLCNIC_ADDR_QDR_NET ;
 int QLCNIC_ADDR_QDR_NET_MAX ;
 int QLCNIC_MS_ADDR_HI ;
 int QLCNIC_MS_ADDR_LO ;
 int QLCNIC_MS_CTRL ;
 int QLCNIC_MS_WRTDATA_HI ;
 int QLCNIC_MS_WRTDATA_LO ;
 int QLCNIC_MS_WRTDATA_UHI ;
 int QLCNIC_MS_WRTDATA_ULO ;
 int QLCNIC_TA_WRITE_ENABLE ;
 int QLCNIC_TA_WRITE_START ;
 int TA_CTL_BUSY ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ printk_ratelimit () ;
 int qlcnic_83xx_rd_reg_indirect (struct qlcnic_adapter*,int ) ;
 int qlcnic_83xx_wrt_reg_indirect (struct qlcnic_adapter*,int ,int) ;

int qlcnic_83xx_ms_mem_write128(struct qlcnic_adapter *adapter, u64 addr,
    u32 *data, u32 count)
{
 int i, j, ret = 0;
 u32 temp;


 if (addr & 0xF)
  return -EIO;

 mutex_lock(&adapter->ahw->mem_lock);
 qlcnic_83xx_wrt_reg_indirect(adapter, QLCNIC_MS_ADDR_HI, 0);

 for (i = 0; i < count; i++, addr += 16) {
  if (!((ADDR_IN_RANGE(addr, QLCNIC_ADDR_QDR_NET,
         QLCNIC_ADDR_QDR_NET_MAX)) ||
        (ADDR_IN_RANGE(addr, QLCNIC_ADDR_DDR_NET,
         QLCNIC_ADDR_DDR_NET_MAX)))) {
   mutex_unlock(&adapter->ahw->mem_lock);
   return -EIO;
  }

  qlcnic_83xx_wrt_reg_indirect(adapter, QLCNIC_MS_ADDR_LO, addr);
  qlcnic_83xx_wrt_reg_indirect(adapter, QLCNIC_MS_WRTDATA_LO,
          *data++);
  qlcnic_83xx_wrt_reg_indirect(adapter, QLCNIC_MS_WRTDATA_HI,
          *data++);
  qlcnic_83xx_wrt_reg_indirect(adapter, QLCNIC_MS_WRTDATA_ULO,
          *data++);
  qlcnic_83xx_wrt_reg_indirect(adapter, QLCNIC_MS_WRTDATA_UHI,
          *data++);
  qlcnic_83xx_wrt_reg_indirect(adapter, QLCNIC_MS_CTRL,
          QLCNIC_TA_WRITE_ENABLE);
  qlcnic_83xx_wrt_reg_indirect(adapter, QLCNIC_MS_CTRL,
          QLCNIC_TA_WRITE_START);

  for (j = 0; j < MAX_CTL_CHECK; j++) {
   temp = qlcnic_83xx_rd_reg_indirect(adapter,
          QLCNIC_MS_CTRL);
   if ((temp & TA_CTL_BUSY) == 0)
    break;
  }


  if (j >= MAX_CTL_CHECK) {
   if (printk_ratelimit()) {
    dev_err(&adapter->pdev->dev,
     "MS memory write failed.\n");
    mutex_unlock(&adapter->ahw->mem_lock);
    return -EIO;
   }
  }
 }

 mutex_unlock(&adapter->ahw->mem_lock);

 return ret;
}
