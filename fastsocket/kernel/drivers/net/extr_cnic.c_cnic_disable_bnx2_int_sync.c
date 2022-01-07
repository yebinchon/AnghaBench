
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cnic_local {int int_num; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; TYPE_1__* irq_arr; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct TYPE_2__ {int vector; } ;


 int BNX2_PCICFG_INT_ACK_CMD ;
 int BNX2_PCICFG_INT_ACK_CMD_MASK_INT ;
 int CNIC_DRV_STATE_USING_MSIX ;
 int CNIC_RD (struct cnic_dev*,int ) ;
 int CNIC_WR (struct cnic_dev*,int ,int) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void cnic_disable_bnx2_int_sync(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;

 if (!(ethdev->drv_state & CNIC_DRV_STATE_USING_MSIX))
  return;

 CNIC_WR(dev, BNX2_PCICFG_INT_ACK_CMD, cp->int_num |
  BNX2_PCICFG_INT_ACK_CMD_MASK_INT);
 CNIC_RD(dev, BNX2_PCICFG_INT_ACK_CMD);
 synchronize_irq(ethdev->irq_arr[0].vector);
}
