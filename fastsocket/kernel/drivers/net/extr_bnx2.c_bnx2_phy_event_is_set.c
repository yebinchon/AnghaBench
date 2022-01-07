
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct status_block {int status_attn_bits; int status_attn_bits_ack; } ;
struct TYPE_2__ {struct status_block* msi; } ;
struct bnx2_napi {TYPE_1__ status_blk; } ;
struct bnx2 {int dummy; } ;


 int BNX2_PCICFG_STATUS_BIT_CLEAR_CMD ;
 int BNX2_PCICFG_STATUS_BIT_SET_CMD ;
 int BNX2_WR (struct bnx2*,int ,int) ;

__attribute__((used)) static int
bnx2_phy_event_is_set(struct bnx2 *bp, struct bnx2_napi *bnapi, u32 event)
{
 struct status_block *sblk = bnapi->status_blk.msi;
 u32 new_link_state, old_link_state;
 int is_set = 1;

 new_link_state = sblk->status_attn_bits & event;
 old_link_state = sblk->status_attn_bits_ack & event;
 if (new_link_state != old_link_state) {
  if (new_link_state)
   BNX2_WR(bp, BNX2_PCICFG_STATUS_BIT_SET_CMD, event);
  else
   BNX2_WR(bp, BNX2_PCICFG_STATUS_BIT_CLEAR_CMD, event);
 } else
  is_set = 0;

 return is_set;
}
