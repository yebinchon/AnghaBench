
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_hw {int dummy; } ;
typedef int dma_addr_t ;


 int PREF_UNIT_ADDR_HI ;
 int PREF_UNIT_ADDR_LO ;
 int PREF_UNIT_CTRL ;
 int PREF_UNIT_LAST_IDX ;
 int PREF_UNIT_OP_ON ;
 int PREF_UNIT_RST_CLR ;
 int PREF_UNIT_RST_SET ;
 int Y2_QADDR (int ,int ) ;
 int lower_32_bits (int ) ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_write16 (struct sky2_hw*,int ,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void sky2_prefetch_init(struct sky2_hw *hw, u32 qaddr,
          dma_addr_t addr, u32 last)
{
 sky2_write32(hw, Y2_QADDR(qaddr, PREF_UNIT_CTRL), PREF_UNIT_RST_SET);
 sky2_write32(hw, Y2_QADDR(qaddr, PREF_UNIT_CTRL), PREF_UNIT_RST_CLR);
 sky2_write32(hw, Y2_QADDR(qaddr, PREF_UNIT_ADDR_HI), upper_32_bits(addr));
 sky2_write32(hw, Y2_QADDR(qaddr, PREF_UNIT_ADDR_LO), lower_32_bits(addr));
 sky2_write16(hw, Y2_QADDR(qaddr, PREF_UNIT_LAST_IDX), last);
 sky2_write32(hw, Y2_QADDR(qaddr, PREF_UNIT_CTRL), PREF_UNIT_OP_ON);

 sky2_read32(hw, Y2_QADDR(qaddr, PREF_UNIT_CTRL));
}
