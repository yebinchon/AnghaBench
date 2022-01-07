
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int ahw; } ;


 int EBUSY ;
 int QLCRDX (int ,int ) ;
 int QLCWRX (int ,int ,int ) ;
 int QLC_83XX_IDC_CTRL ;
 int QLC_83XX_IDC_DRV_ACK ;
 int QLC_83XX_IDC_GRACEFULL_RESET ;
 scalar_t__ qlcnic_83xx_lock_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_unlock_driver (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_83xx_idc_clear_registers(struct qlcnic_adapter *adapter,
        int lock)
{
 u32 val;

 if (lock) {
  if (qlcnic_83xx_lock_driver(adapter))
   return -EBUSY;
 }

 QLCWRX(adapter->ahw, QLC_83XX_IDC_DRV_ACK, 0);

 val = QLCRDX(adapter->ahw, QLC_83XX_IDC_CTRL);
 val &= ~QLC_83XX_IDC_GRACEFULL_RESET;
 QLCWRX(adapter->ahw, QLC_83XX_IDC_CTRL, val);

 if (lock)
  qlcnic_83xx_unlock_driver(adapter);

 return 0;
}
