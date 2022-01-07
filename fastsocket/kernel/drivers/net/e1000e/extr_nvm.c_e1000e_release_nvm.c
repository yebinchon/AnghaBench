
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_EECD_REQ ;
 int EECD ;
 int e1000_stop_nvm (struct e1000_hw*) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

void e1000e_release_nvm(struct e1000_hw *hw)
{
 u32 eecd;

 e1000_stop_nvm(hw);

 eecd = er32(EECD);
 eecd &= ~E1000_EECD_REQ;
 ew32(EECD, eecd);
}
