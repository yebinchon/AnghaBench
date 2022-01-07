
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct bnx2x {int dummy; } ;


 int BNX2X_DEV_INFO (char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ BNX2X_PREV_UNDI_BD (int ) ;
 int BNX2X_PREV_UNDI_PROD (scalar_t__,scalar_t__) ;
 int BNX2X_PREV_UNDI_PROD_ADDR (scalar_t__) ;
 scalar_t__ BNX2X_PREV_UNDI_RCQ (int ) ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_prev_unload_undi_inc(struct bnx2x *bp, u8 port, u8 inc)
{
 u16 rcq, bd;
 u32 tmp_reg = REG_RD(bp, BNX2X_PREV_UNDI_PROD_ADDR(port));

 rcq = BNX2X_PREV_UNDI_RCQ(tmp_reg) + inc;
 bd = BNX2X_PREV_UNDI_BD(tmp_reg) + inc;

 tmp_reg = BNX2X_PREV_UNDI_PROD(rcq, bd);
 REG_WR(bp, BNX2X_PREV_UNDI_PROD_ADDR(port), tmp_reg);

 BNX2X_DEV_INFO("UNDI producer [%d] rings bd -> 0x%04x, rcq -> 0x%04x\n",
         port, bd, rcq);
}
