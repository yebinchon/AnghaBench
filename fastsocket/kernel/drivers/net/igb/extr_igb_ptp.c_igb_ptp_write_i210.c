
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_SYSTIMH ;
 int E1000_SYSTIML ;
 int wr32 (int ,int ) ;

__attribute__((used)) static void igb_ptp_write_i210(struct igb_adapter *adapter,
          const struct timespec *ts)
{
 struct e1000_hw *hw = &adapter->hw;




 wr32(E1000_SYSTIML, ts->tv_nsec);
 wr32(E1000_SYSTIMH, ts->tv_sec);
}
