
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 int ILT_ADDR1 (int ) ;
 int ILT_ADDR2 (int ) ;
 scalar_t__ PXP2_REG_RQ_ONCHIP_AT ;
 scalar_t__ PXP2_REG_RQ_ONCHIP_AT_B0 ;
 int bnx2x_wr_64 (struct bnx2x*,scalar_t__,int ,int ) ;

__attribute__((used)) static void bnx2x_ilt_line_wr(struct bnx2x *bp, int abs_idx,
         dma_addr_t page_mapping)
{
 u32 reg;

 if (CHIP_IS_E1(bp))
  reg = PXP2_REG_RQ_ONCHIP_AT + abs_idx*8;
 else
  reg = PXP2_REG_RQ_ONCHIP_AT_B0 + abs_idx*8;

 bnx2x_wr_64(bp, reg, ILT_ADDR1(page_mapping), ILT_ADDR2(page_mapping));
}
