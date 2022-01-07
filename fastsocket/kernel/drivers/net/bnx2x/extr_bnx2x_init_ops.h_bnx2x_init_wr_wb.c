
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {scalar_t__ dmae_ready; } ;


 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 int VIRT_WR_DMAE_LEN (struct bnx2x*,int const*,int ,int ,int ) ;
 int bnx2x_init_ind_wr (struct bnx2x*,int ,int const*,int ) ;
 int bnx2x_init_str_wr (struct bnx2x*,int ,int const*,int ) ;

__attribute__((used)) static void bnx2x_init_wr_wb(struct bnx2x *bp, u32 addr,
        const u32 *data, u32 len)
{
 if (bp->dmae_ready)
  VIRT_WR_DMAE_LEN(bp, data, addr, len, 0);


 else if (CHIP_IS_E1(bp))
  bnx2x_init_ind_wr(bp, addr, data, len);


 else
  bnx2x_init_str_wr(bp, addr, data, len);
}
