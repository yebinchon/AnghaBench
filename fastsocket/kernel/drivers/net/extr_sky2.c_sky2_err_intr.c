
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sky2_hw {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int Q_R1 ;
 int Q_R2 ;
 int Q_XA1 ;
 int Q_XA2 ;
 int Y2_IS_CHK_RX1 ;
 int Y2_IS_CHK_RX2 ;
 int Y2_IS_CHK_TXA1 ;
 int Y2_IS_CHK_TXA2 ;
 int Y2_IS_HW_ERR ;
 int Y2_IS_IRQ_MAC1 ;
 int Y2_IS_IRQ_MAC2 ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ net_ratelimit () ;
 int sky2_hw_intr (struct sky2_hw*) ;
 int sky2_le_error (struct sky2_hw*,int,int ) ;
 int sky2_mac_intr (struct sky2_hw*,int) ;

__attribute__((used)) static void sky2_err_intr(struct sky2_hw *hw, u32 status)
{
 if (net_ratelimit())
  dev_warn(&hw->pdev->dev, "error interrupt status=%#x\n", status);

 if (status & Y2_IS_HW_ERR)
  sky2_hw_intr(hw);

 if (status & Y2_IS_IRQ_MAC1)
  sky2_mac_intr(hw, 0);

 if (status & Y2_IS_IRQ_MAC2)
  sky2_mac_intr(hw, 1);

 if (status & Y2_IS_CHK_RX1)
  sky2_le_error(hw, 0, Q_R1);

 if (status & Y2_IS_CHK_RX2)
  sky2_le_error(hw, 1, Q_R2);

 if (status & Y2_IS_CHK_TXA1)
  sky2_le_error(hw, 0, Q_XA1);

 if (status & Y2_IS_CHK_TXA2)
  sky2_le_error(hw, 1, Q_XA2);
}
