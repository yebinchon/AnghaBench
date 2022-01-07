
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_5__ {int (* read ) (struct ixgbe_hw*,int*,int) ;int (* check_for_msg ) (struct ixgbe_hw*) ;int (* check_for_ack ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int v2p_mailbox; TYPE_2__ ops; } ;
struct TYPE_4__ {int get_link_status; } ;
struct ixgbe_hw {TYPE_3__ mbx; TYPE_1__ mac; } ;
struct ixgbevf_adapter {int link_up; int eims_other; int watchdog_timer; struct ixgbe_hw hw; struct pci_dev* pdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IXGBE_MBVFICR_VFREQ_MASK ;
 int IXGBE_PF_CONTROL_MSG ;
 int IXGBE_VFMAILBOX_PFACK ;
 int IXGBE_VFMAILBOX_PFSTS ;
 int IXGBE_VTEIMS ;
 int IXGBE_VT_MSGTYPE_NACK ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int dev_info (int *,char*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies (scalar_t__) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;
 int stub3 (struct ixgbe_hw*,int*,int) ;

__attribute__((used)) static irqreturn_t ixgbevf_msix_other(int irq, void *data)
{
 struct ixgbevf_adapter *adapter = data;
 struct pci_dev *pdev = adapter->pdev;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 msg;
 bool got_ack = 0;

 hw->mac.get_link_status = 1;
 if (!hw->mbx.ops.check_for_ack(hw))
  got_ack = 1;

 if (!hw->mbx.ops.check_for_msg(hw)) {
  hw->mbx.ops.read(hw, &msg, 1);

  if ((msg & IXGBE_MBVFICR_VFREQ_MASK) == IXGBE_PF_CONTROL_MSG) {
   mod_timer(&adapter->watchdog_timer,
      round_jiffies(jiffies + 1));
   adapter->link_up = 0;
  }

  if (msg & IXGBE_VT_MSGTYPE_NACK)
   dev_info(&pdev->dev,
     "Last Request of type %2.2x to PF Nacked\n",
     msg & 0xFF);
  hw->mbx.v2p_mailbox |= IXGBE_VFMAILBOX_PFSTS;
 }





 if (got_ack)
  hw->mbx.v2p_mailbox |= IXGBE_VFMAILBOX_PFACK;

 IXGBE_WRITE_REG(hw, IXGBE_VTEIMS, adapter->eims_other);

 return IRQ_HANDLED;
}
