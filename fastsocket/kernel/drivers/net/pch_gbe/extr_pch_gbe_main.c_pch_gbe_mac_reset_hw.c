
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
struct pch_gbe_hw {TYPE_2__ mac; TYPE_1__* reg; } ;
struct TYPE_3__ {int RESET; int MODE; } ;


 int PCH_GBE_ALL_RST ;
 int PCH_GBE_MODE_GMII_ETHER ;
 int iowrite32 (int ,int *) ;
 int pch_gbe_mac_mar_set (struct pch_gbe_hw*,int ,int ) ;
 int pch_gbe_mac_read_mac_addr (struct pch_gbe_hw*) ;
 int pch_gbe_wait_clr_bit (int *,int ) ;

__attribute__((used)) static void pch_gbe_mac_reset_hw(struct pch_gbe_hw *hw)
{

 pch_gbe_mac_read_mac_addr(hw);
 iowrite32(PCH_GBE_ALL_RST, &hw->reg->RESET);



 pch_gbe_wait_clr_bit(&hw->reg->RESET, PCH_GBE_ALL_RST);

 pch_gbe_mac_mar_set(hw, hw->mac.addr, 0);
 return;
}
