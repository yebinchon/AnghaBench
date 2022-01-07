
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fastpath {scalar_t__ mode; int disable_tpa; } ;
struct bnx2x {scalar_t__ vlgrp; } ;


 int BNX2X_Q_FLG_FCOE ;
 int BNX2X_Q_FLG_FORCE_DEFAULT_PRI ;
 int BNX2X_Q_FLG_LEADING_RSS ;
 int BNX2X_Q_FLG_MCAST ;
 int BNX2X_Q_FLG_OV ;
 int BNX2X_Q_FLG_SILENT_VLAN_REM ;
 int BNX2X_Q_FLG_TPA ;
 int BNX2X_Q_FLG_TPA_GRO ;
 int BNX2X_Q_FLG_TPA_IPV6 ;
 int BNX2X_Q_FLG_VLAN ;
 scalar_t__ IS_FCOE_FP (struct bnx2x_fastpath*) ;
 scalar_t__ IS_MF_AFEX (struct bnx2x*) ;
 scalar_t__ IS_MF_SD (struct bnx2x*) ;
 scalar_t__ TPA_MODE_GRO ;
 int __set_bit (int ,unsigned long*) ;
 unsigned long bnx2x_get_common_flags (struct bnx2x*,struct bnx2x_fastpath*,int) ;

__attribute__((used)) static unsigned long bnx2x_get_q_flags(struct bnx2x *bp,
           struct bnx2x_fastpath *fp,
           bool leading)
{
 unsigned long flags = 0;


 if (IS_MF_SD(bp))
  __set_bit(BNX2X_Q_FLG_OV, &flags);

 if (IS_FCOE_FP(fp)) {
  __set_bit(BNX2X_Q_FLG_FCOE, &flags);

  __set_bit(BNX2X_Q_FLG_FORCE_DEFAULT_PRI, &flags);
 }

 if (!fp->disable_tpa) {
  __set_bit(BNX2X_Q_FLG_TPA, &flags);
  __set_bit(BNX2X_Q_FLG_TPA_IPV6, &flags);
  if (fp->mode == TPA_MODE_GRO)
   __set_bit(BNX2X_Q_FLG_TPA_GRO, &flags);
 }

 if (leading) {
  __set_bit(BNX2X_Q_FLG_LEADING_RSS, &flags);
  __set_bit(BNX2X_Q_FLG_MCAST, &flags);
 }

 if (bp->vlgrp)
  __set_bit(BNX2X_Q_FLG_VLAN, &flags);


 if (IS_MF_AFEX(bp))
  __set_bit(BNX2X_Q_FLG_SILENT_VLAN_REM, &flags);

 return flags | bnx2x_get_common_flags(bp, fp, 1);
}
