
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ CSTORM_STATUS_BLOCK_DATA_TIMEOUT_OFFSET (int ,int ) ;
 int DP (int ,char*,int ,int ,int ,int ) ;
 int NETIF_MSG_IFUP ;
 int REG_WR8 (struct bnx2x*,scalar_t__,int ) ;

__attribute__((used)) static void storm_memset_hc_timeout(struct bnx2x *bp, u8 port,
        u8 fw_sb_id, u8 sb_index,
        u8 ticks)
{
 u32 addr = BAR_CSTRORM_INTMEM +
     CSTORM_STATUS_BLOCK_DATA_TIMEOUT_OFFSET(fw_sb_id, sb_index);
 REG_WR8(bp, addr, ticks);
 DP(NETIF_MSG_IFUP,
    "port %x fw_sb_id %d sb_index %d ticks %d\n",
    port, fw_sb_id, sb_index, ticks);
}
