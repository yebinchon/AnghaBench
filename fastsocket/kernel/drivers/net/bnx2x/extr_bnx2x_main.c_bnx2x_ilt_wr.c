
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 int ONCHIP_ADDR1 (int ) ;
 int ONCHIP_ADDR2 (int ) ;
 int PXP2_REG_RQ_ONCHIP_AT ;
 int PXP2_REG_RQ_ONCHIP_AT_B0 ;
 int REG_WR_DMAE (struct bnx2x*,int,int*,int) ;

__attribute__((used)) static void bnx2x_ilt_wr(struct bnx2x *bp, u32 index, dma_addr_t addr)
{
 int reg;
 u32 wb_write[2];

 if (CHIP_IS_E1(bp))
  reg = PXP2_REG_RQ_ONCHIP_AT + index*8;
 else
  reg = PXP2_REG_RQ_ONCHIP_AT_B0 + index*8;

 wb_write[0] = ONCHIP_ADDR1(addr);
 wb_write[1] = ONCHIP_ADDR2(addr);
 REG_WR_DMAE(bp, reg, wb_write, 2);
}
