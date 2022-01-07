
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pch_gbe_hw {TYPE_1__* reg; } ;
struct TYPE_2__ {int MAC_RX_EN; } ;


 int PCH_GBE_MRE_MAC_RX_EN ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;

__attribute__((used)) static void pch_gbe_enable_mac_rx(struct pch_gbe_hw *hw)
{
 u32 rctl;

 rctl = ioread32(&hw->reg->MAC_RX_EN);
 iowrite32((rctl | PCH_GBE_MRE_MAC_RX_EN), &hw->reg->MAC_RX_EN);
}
