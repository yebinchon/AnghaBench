
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BP_PORT (struct bnx2x*) ;
 scalar_t__ NIG_REG_LLH0_FUNC_EN ;
 int REG_WR (struct bnx2x*,scalar_t__,int ) ;
 int bnx2x_tx_disable (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_e1h_disable(struct bnx2x *bp)
{
 int port = BP_PORT(bp);

 bnx2x_tx_disable(bp);

 REG_WR(bp, NIG_REG_LLH0_FUNC_EN + port*8, 0);
}
