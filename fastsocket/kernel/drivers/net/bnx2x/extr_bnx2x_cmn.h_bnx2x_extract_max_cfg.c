
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_ETHTOOL ;
 int DP (int,char*) ;
 int FUNC_MF_CFG_MAX_BW_MASK ;
 int FUNC_MF_CFG_MAX_BW_SHIFT ;
 int NETIF_MSG_IFUP ;

__attribute__((used)) static inline u16 bnx2x_extract_max_cfg(struct bnx2x *bp, u32 mf_cfg)
{
 u16 max_cfg = (mf_cfg & FUNC_MF_CFG_MAX_BW_MASK) >>
         FUNC_MF_CFG_MAX_BW_SHIFT;
 if (!max_cfg) {
  DP(NETIF_MSG_IFUP | BNX2X_MSG_ETHTOOL,
     "Max BW configured to 0 - using 100 instead\n");
  max_cfg = 100;
 }
 return max_cfg;
}
