
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hc_sp_status_block_data {int dummy; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 int BP_FUNC (struct bnx2x*) ;
 scalar_t__ CSTORM_SP_STATUS_BLOCK_DATA_OFFSET (int) ;
 int REG_WR (struct bnx2x*,scalar_t__,int ) ;

__attribute__((used)) static void bnx2x_wr_sp_sb_data(struct bnx2x *bp,
  struct hc_sp_status_block_data *sp_sb_data)
{
 int func = BP_FUNC(bp);
 int i;
 for (i = 0; i < sizeof(struct hc_sp_status_block_data)/sizeof(u32); i++)
  REG_WR(bp, BAR_CSTRORM_INTMEM +
   CSTORM_SP_STATUS_BLOCK_DATA_OFFSET(func) +
   i*sizeof(u32),
   *((u32 *)sp_sb_data + i));
}
