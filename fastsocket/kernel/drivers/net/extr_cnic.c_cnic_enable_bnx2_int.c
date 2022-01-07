
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_local {int int_num; int last_status_idx; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int BNX2_PCICFG_INT_ACK_CMD ;
 int BNX2_PCICFG_INT_ACK_CMD_INDEX_VALID ;
 int CNIC_DRV_STATE_USING_MSIX ;
 int CNIC_WR (struct cnic_dev*,int ,int) ;

__attribute__((used)) static void cnic_enable_bnx2_int(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;

 if (!(ethdev->drv_state & CNIC_DRV_STATE_USING_MSIX))
  return;

 CNIC_WR(dev, BNX2_PCICFG_INT_ACK_CMD, cp->int_num |
  BNX2_PCICFG_INT_ACK_CMD_INDEX_VALID | cp->last_status_idx);
}
