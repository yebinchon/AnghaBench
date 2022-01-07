
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int pci_base0; int mbx_lock; } ;


 int IRQ_HANDLED ;
 int QLCNIC_DEF_INT_MASK ;
 int QLCNIC_FW_MBX_CTRL ;
 int QLCNIC_MBX_ASYNC_EVENT ;
 int QLCNIC_MBX_FW (TYPE_1__*,int ) ;
 int QLCNIC_SET_OWNER ;
 int QLCRDX (TYPE_1__*,int ) ;
 int __qlcnic_83xx_process_aen (struct qlcnic_adapter*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int) ;

irqreturn_t qlcnic_83xx_handle_aen(int irq, void *data)
{
 struct qlcnic_adapter *adapter = data;
 unsigned long flags;
 u32 mask, resp, event;

 spin_lock_irqsave(&adapter->ahw->mbx_lock, flags);
 resp = QLCRDX(adapter->ahw, QLCNIC_FW_MBX_CTRL);
 if (!(resp & QLCNIC_SET_OWNER))
  goto out;

 event = readl(QLCNIC_MBX_FW(adapter->ahw, 0));
 if (event & QLCNIC_MBX_ASYNC_EVENT)
  __qlcnic_83xx_process_aen(adapter);
out:
 mask = QLCRDX(adapter->ahw, QLCNIC_DEF_INT_MASK);
 writel(0, adapter->ahw->pci_base0 + mask);
 spin_unlock_irqrestore(&adapter->ahw->mbx_lock, flags);

 return IRQ_HANDLED;
}
