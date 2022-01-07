
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int tmreg_lock; int cc; int tc; struct ixgbe_hw hw; } ;


 int IXGBE_SYSTIMH ;
 int IXGBE_SYSTIML ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_ptp_setup_sdp (struct ixgbe_adapter*) ;
 int ixgbe_ptp_start_cyclecounter (struct ixgbe_adapter*) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timecounter_init (int *,int *,int ) ;

void ixgbe_ptp_reset(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 unsigned long flags;


 IXGBE_WRITE_REG(hw, IXGBE_SYSTIML, 0x00000000);
 IXGBE_WRITE_REG(hw, IXGBE_SYSTIMH, 0x00000000);
 IXGBE_WRITE_FLUSH(hw);

 ixgbe_ptp_start_cyclecounter(adapter);

 spin_lock_irqsave(&adapter->tmreg_lock, flags);


 timecounter_init(&adapter->tc, &adapter->cc,
    ktime_to_ns(ktime_get_real()));

 spin_unlock_irqrestore(&adapter->tmreg_lock, flags);





 ixgbe_ptp_setup_sdp(adapter);
}
