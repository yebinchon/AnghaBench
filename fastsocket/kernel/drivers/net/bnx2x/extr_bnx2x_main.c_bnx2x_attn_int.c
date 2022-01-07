
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bnx2x {int attn_state; TYPE_2__* def_status_blk; } ;
struct TYPE_3__ {int attn_bits_ack; int attn_bits; } ;
struct TYPE_4__ {TYPE_1__ atten_status_block; } ;


 int BNX2X_ERR (char*) ;
 int DP (int ,char*,int,int,int,int) ;
 int NETIF_MSG_HW ;
 int bnx2x_attn_int_asserted (struct bnx2x*,int) ;
 int bnx2x_attn_int_deasserted (struct bnx2x*,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void bnx2x_attn_int(struct bnx2x *bp)
{

 u32 attn_bits = le32_to_cpu(bp->def_status_blk->atten_status_block.
        attn_bits);
 u32 attn_ack = le32_to_cpu(bp->def_status_blk->atten_status_block.
        attn_bits_ack);
 u32 attn_state = bp->attn_state;


 u32 asserted = attn_bits & ~attn_ack & ~attn_state;
 u32 deasserted = ~attn_bits & attn_ack & attn_state;

 DP(NETIF_MSG_HW,
    "attn_bits %x  attn_ack %x  asserted %x  deasserted %x\n",
    attn_bits, attn_ack, asserted, deasserted);

 if (~(attn_bits ^ attn_ack) & (attn_bits ^ attn_state))
  BNX2X_ERR("BAD attention state\n");


 if (asserted)
  bnx2x_attn_int_asserted(bp, asserted);

 if (deasserted)
  bnx2x_attn_int_deasserted(bp, deasserted);
}
