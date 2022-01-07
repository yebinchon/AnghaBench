
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pch_gbe_hw {TYPE_2__* reg; } ;
struct TYPE_4__ {TYPE_1__* mac_adr; int ADDR_MASK; } ;
struct TYPE_3__ {int low; int high; } ;


 int PCH_GBE_BUSY ;
 int PCH_GBE_ETH_ALEN ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;
 int pch_gbe_mac_mar_set (struct pch_gbe_hw*,int *,int) ;
 int pch_gbe_wait_clr_bit (int *,int ) ;

__attribute__((used)) static void pch_gbe_mac_mc_addr_list_update(struct pch_gbe_hw *hw,
         u8 *mc_addr_list, u32 mc_addr_count,
         u32 mar_used_count, u32 mar_total_num)
{
 u32 i, adrmask;





 for (i = mar_used_count; i < mar_total_num; i++) {
  if (mc_addr_count) {
   pch_gbe_mac_mar_set(hw, mc_addr_list, i);
   mc_addr_count--;
   mc_addr_list += PCH_GBE_ETH_ALEN;
  } else {

   adrmask = ioread32(&hw->reg->ADDR_MASK);
   iowrite32((adrmask | (0x0001 << i)),
     &hw->reg->ADDR_MASK);

   pch_gbe_wait_clr_bit(&hw->reg->ADDR_MASK, PCH_GBE_BUSY);

   iowrite32(0, &hw->reg->mac_adr[i].high);
   iowrite32(0, &hw->reg->mac_adr[i].low);
  }
 }
}
