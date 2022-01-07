
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int CTRL ;
 int E1000_CTRL_ILOS ;
 int E1000_CTRL_SLU ;
 int E1000_SCTL_ENABLE_SERDES_LOOPBACK ;
 int E1000_STATUS_LU ;
 int SCTL ;
 int STATUS ;
 int TXCW ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int e1000_set_82571_fiber_loopback(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl = er32(CTRL);
 int link;






 ctrl |= E1000_CTRL_SLU;
 ew32(CTRL, ctrl);


 ctrl = er32(TXCW);
 ctrl &= ~(1 << 31);
 ew32(TXCW, ctrl);

 link = (er32(STATUS) & E1000_STATUS_LU);

 if (!link) {

  ctrl = er32(CTRL);
  ctrl |= E1000_CTRL_ILOS;
  ew32(CTRL, ctrl);
 }




 ew32(SCTL, E1000_SCTL_ENABLE_SERDES_LOOPBACK);
 e1e_flush();
 usleep_range(10000, 20000);

 return 0;
}
