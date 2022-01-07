
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dcb_state; scalar_t__ dcbx_enabled; } ;


 scalar_t__ BNX2X_DCBX_ENABLED_INVALID ;
 scalar_t__ BNX2X_DCBX_ENABLED_OFF ;
 scalar_t__ BNX2X_DCBX_ENABLED_ON_NEG_OFF ;
 scalar_t__ BNX2X_DCBX_ENABLED_ON_NEG_ON ;
 int BNX2X_MSG_DCB ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int DP (int ,char*,char*,char*) ;

void bnx2x_dcbx_set_state(struct bnx2x *bp, bool dcb_on, u32 dcbx_enabled)
{
 if (!CHIP_IS_E1x(bp)) {
  bp->dcb_state = dcb_on;
  bp->dcbx_enabled = dcbx_enabled;
 } else {
  bp->dcb_state = 0;
  bp->dcbx_enabled = BNX2X_DCBX_ENABLED_INVALID;
 }
 DP(BNX2X_MSG_DCB, "DCB state [%s:%s]\n",
    dcb_on ? "ON" : "OFF",
    dcbx_enabled == BNX2X_DCBX_ENABLED_OFF ? "user-mode" :
    dcbx_enabled == BNX2X_DCBX_ENABLED_ON_NEG_OFF ? "on-chip static" :
    dcbx_enabled == BNX2X_DCBX_ENABLED_ON_NEG_ON ?
    "on-chip with negotiation" : "invalid");
}
