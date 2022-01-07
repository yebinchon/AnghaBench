
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_hardware_context {int mbx_lock; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 int QLCNIC_FW_MBX_CTRL ;
 int QLCNIC_MBX_ASYNC_EVENT ;
 int QLCNIC_MBX_FW (struct qlcnic_hardware_context*,int ) ;
 int QLCNIC_SET_OWNER ;
 int QLCRDX (struct qlcnic_hardware_context*,int ) ;
 int __qlcnic_83xx_process_aen (struct qlcnic_adapter*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qlcnic_83xx_process_aen(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 u32 resp, event;
 unsigned long flags;

 spin_lock_irqsave(&ahw->mbx_lock, flags);

 resp = QLCRDX(ahw, QLCNIC_FW_MBX_CTRL);
 if (resp & QLCNIC_SET_OWNER) {
  event = readl(QLCNIC_MBX_FW(ahw, 0));
  if (event & QLCNIC_MBX_ASYNC_EVENT)
   __qlcnic_83xx_process_aen(adapter);
 }

 spin_unlock_irqrestore(&ahw->mbx_lock, flags);
}
