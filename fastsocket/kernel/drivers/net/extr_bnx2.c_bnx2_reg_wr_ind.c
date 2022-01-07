
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int indirect_lock; } ;


 int BNX2_PCICFG_REG_WINDOW ;
 int BNX2_PCICFG_REG_WINDOW_ADDRESS ;
 int BNX2_WR (struct bnx2*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
bnx2_reg_wr_ind(struct bnx2 *bp, u32 offset, u32 val)
{
 spin_lock_bh(&bp->indirect_lock);
 BNX2_WR(bp, BNX2_PCICFG_REG_WINDOW_ADDRESS, offset);
 BNX2_WR(bp, BNX2_PCICFG_REG_WINDOW, val);
 spin_unlock_bh(&bp->indirect_lock);
}
