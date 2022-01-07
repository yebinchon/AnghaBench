
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_hw {scalar_t__ chip_id; } ;


 scalar_t__ CHIP_ID_GENESIS ;
 int genesis_mac_intr (struct skge_hw*,int) ;
 int yukon_mac_intr (struct skge_hw*,int) ;

__attribute__((used)) static void skge_mac_intr(struct skge_hw *hw, int port)
{
 if (hw->chip_id == CHIP_ID_GENESIS)
  genesis_mac_intr(hw, port);
 else
  yukon_mac_intr(hw, port);
}
