
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






 int MC_CMD_PHY_CAP_10000FDX_LBN ;
 int MC_CMD_PHY_CAP_1000FDX_LBN ;
 int MC_CMD_PHY_CAP_1000HDX_LBN ;
 int MC_CMD_PHY_CAP_100FDX_LBN ;
 int MC_CMD_PHY_CAP_100HDX_LBN ;
 int MC_CMD_PHY_CAP_10FDX_LBN ;
 int MC_CMD_PHY_CAP_10HDX_LBN ;
 int MC_CMD_PHY_CAP_AN_LBN ;
 int MC_CMD_PHY_CAP_ASYM_LBN ;
 int MC_CMD_PHY_CAP_PAUSE_LBN ;
 int SUPPORTED_10000baseKX4_Full ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseKX_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Asym_Pause ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_Backplane ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_Pause ;
 int SUPPORTED_TP ;

__attribute__((used)) static u32 mcdi_to_ethtool_cap(u32 media, u32 cap)
{
 u32 result = 0;

 switch (media) {
 case 130:
  result |= SUPPORTED_Backplane;
  if (cap & (1 << MC_CMD_PHY_CAP_1000FDX_LBN))
   result |= SUPPORTED_1000baseKX_Full;
  if (cap & (1 << MC_CMD_PHY_CAP_10000FDX_LBN))
   result |= SUPPORTED_10000baseKX4_Full;
  break;

 case 128:
 case 129:
  result |= SUPPORTED_FIBRE;
  break;

 case 131:
  result |= SUPPORTED_TP;
  if (cap & (1 << MC_CMD_PHY_CAP_10HDX_LBN))
   result |= SUPPORTED_10baseT_Half;
  if (cap & (1 << MC_CMD_PHY_CAP_10FDX_LBN))
   result |= SUPPORTED_10baseT_Full;
  if (cap & (1 << MC_CMD_PHY_CAP_100HDX_LBN))
   result |= SUPPORTED_100baseT_Half;
  if (cap & (1 << MC_CMD_PHY_CAP_100FDX_LBN))
   result |= SUPPORTED_100baseT_Full;
  if (cap & (1 << MC_CMD_PHY_CAP_1000HDX_LBN))
   result |= SUPPORTED_1000baseT_Half;
  if (cap & (1 << MC_CMD_PHY_CAP_1000FDX_LBN))
   result |= SUPPORTED_1000baseT_Full;
  if (cap & (1 << MC_CMD_PHY_CAP_10000FDX_LBN))
   result |= SUPPORTED_10000baseT_Full;
  break;
 }

 if (cap & (1 << MC_CMD_PHY_CAP_PAUSE_LBN))
  result |= SUPPORTED_Pause;
 if (cap & (1 << MC_CMD_PHY_CAP_ASYM_LBN))
  result |= SUPPORTED_Asym_Pause;
 if (cap & (1 << MC_CMD_PHY_CAP_AN_LBN))
  result |= SUPPORTED_Autoneg;

 return result;
}
