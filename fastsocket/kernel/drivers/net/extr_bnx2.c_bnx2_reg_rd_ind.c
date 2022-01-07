
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int indirect_lock; } ;


 int BNX2_PCICFG_REG_WINDOW ;
 int BNX2_PCICFG_REG_WINDOW_ADDRESS ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static u32
bnx2_reg_rd_ind(struct bnx2 *bp, u32 offset)
{
 u32 val;

 spin_lock_bh(&bp->indirect_lock);
 BNX2_WR(bp, BNX2_PCICFG_REG_WINDOW_ADDRESS, offset);
 val = BNX2_RD(bp, BNX2_PCICFG_REG_WINDOW);
 spin_unlock_bh(&bp->indirect_lock);
 return val;
}
