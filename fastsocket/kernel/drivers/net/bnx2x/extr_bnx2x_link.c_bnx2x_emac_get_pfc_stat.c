
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct link_params {scalar_t__ port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 scalar_t__ EMAC_REG_RX_PFC_STATS_XOFF_RCVD ;
 scalar_t__ EMAC_REG_RX_PFC_STATS_XOFF_RCVD_COUNT ;
 scalar_t__ EMAC_REG_RX_PFC_STATS_XOFF_SENT ;
 scalar_t__ EMAC_REG_RX_PFC_STATS_XOFF_SENT_COUNT ;
 scalar_t__ EMAC_REG_RX_PFC_STATS_XON_RCVD ;
 scalar_t__ EMAC_REG_RX_PFC_STATS_XON_RCVD_COUNT ;
 scalar_t__ EMAC_REG_RX_PFC_STATS_XON_SENT ;
 scalar_t__ EMAC_REG_RX_PFC_STATS_XON_SENT_COUNT ;
 scalar_t__ GRCBASE_EMAC0 ;
 scalar_t__ GRCBASE_EMAC1 ;
 int NETIF_MSG_LINK ;
 scalar_t__ REG_RD (struct bnx2x*,scalar_t__) ;

__attribute__((used)) static void bnx2x_emac_get_pfc_stat(struct link_params *params,
        u32 pfc_frames_sent[2],
        u32 pfc_frames_received[2])
{

 struct bnx2x *bp = params->bp;
 u32 emac_base = params->port ? GRCBASE_EMAC1 : GRCBASE_EMAC0;
 u32 val_xon = 0;
 u32 val_xoff = 0;

 DP(NETIF_MSG_LINK, "pfc statistic read from EMAC\n");


 val_xoff = REG_RD(bp, emac_base +
    EMAC_REG_RX_PFC_STATS_XOFF_RCVD);
 val_xoff &= EMAC_REG_RX_PFC_STATS_XOFF_RCVD_COUNT;
 val_xon = REG_RD(bp, emac_base + EMAC_REG_RX_PFC_STATS_XON_RCVD);
 val_xon &= EMAC_REG_RX_PFC_STATS_XON_RCVD_COUNT;

 pfc_frames_received[0] = val_xon + val_xoff;


 val_xoff = REG_RD(bp, emac_base +
    EMAC_REG_RX_PFC_STATS_XOFF_SENT);
 val_xoff &= EMAC_REG_RX_PFC_STATS_XOFF_SENT_COUNT;
 val_xon = REG_RD(bp, emac_base + EMAC_REG_RX_PFC_STATS_XON_SENT);
 val_xon &= EMAC_REG_RX_PFC_STATS_XON_SENT_COUNT;

 pfc_frames_sent[0] = val_xon + val_xoff;
}
