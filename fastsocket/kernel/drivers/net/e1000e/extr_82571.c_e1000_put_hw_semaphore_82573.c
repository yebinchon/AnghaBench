
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP ;
 int EXTCNF_CTRL ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static void e1000_put_hw_semaphore_82573(struct e1000_hw *hw)
{
 u32 extcnf_ctrl;

 extcnf_ctrl = er32(EXTCNF_CTRL);
 extcnf_ctrl &= ~E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP;
 ew32(EXTCNF_CTRL, extcnf_ctrl);
}
