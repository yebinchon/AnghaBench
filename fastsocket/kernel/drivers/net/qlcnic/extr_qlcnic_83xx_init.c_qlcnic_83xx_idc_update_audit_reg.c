
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qlcnic_adapter {int portnum; TYPE_2__* ahw; } ;
struct TYPE_4__ {int sec_counter; } ;
struct TYPE_5__ {TYPE_1__ idc; } ;


 int EBUSY ;
 int HZ ;
 int QLCRDX (TYPE_2__*,int ) ;
 int QLCWRX (TYPE_2__*,int ,int) ;
 int QLC_83XX_IDC_DRV_AUDIT ;
 int jiffies ;
 scalar_t__ qlcnic_83xx_lock_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_unlock_driver (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_83xx_idc_update_audit_reg(struct qlcnic_adapter *adapter,
         u8 mode, int lock)
{
 u32 val;
 int seconds;

 if (lock) {
  if (qlcnic_83xx_lock_driver(adapter))
   return -EBUSY;
 }

 val = QLCRDX(adapter->ahw, QLC_83XX_IDC_DRV_AUDIT);
 val |= (adapter->portnum & 0xf);
 val |= mode << 7;
 if (mode)
  seconds = jiffies / HZ - adapter->ahw->idc.sec_counter;
 else
  seconds = jiffies / HZ;

 val |= seconds << 8;
 QLCWRX(adapter->ahw, QLC_83XX_IDC_DRV_AUDIT, val);
 adapter->ahw->idc.sec_counter = jiffies / HZ;

 if (lock)
  qlcnic_83xx_unlock_driver(adapter);

 return 0;
}
