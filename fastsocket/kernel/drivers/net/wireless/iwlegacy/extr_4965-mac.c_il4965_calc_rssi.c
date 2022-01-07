
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct il_rx_phy_res {int phy_flags; scalar_t__ non_cfg_phy_buf; } ;
struct il_priv {int dummy; } ;
struct il4965_rx_non_cfg_phy {int * rssi_info; int agc_info; } ;


 int D_STATS (char*,int ,int ,int ,int,int) ;
 int IL4965_RSSI_OFFSET ;
 int IL49_AGC_DB_MASK ;
 int IL49_AGC_DB_POS ;
 int IL49_RX_PHY_FLAGS_ANTENNAE_MASK ;
 int IL49_RX_PHY_FLAGS_ANTENNAE_OFFSET ;
 int le16_to_cpu (int ) ;
 int max (int ,int) ;

__attribute__((used)) static int
il4965_calc_rssi(struct il_priv *il, struct il_rx_phy_res *rx_resp)
{


 struct il4965_rx_non_cfg_phy *ncphy =
     (struct il4965_rx_non_cfg_phy *)rx_resp->non_cfg_phy_buf;
 u32 agc =
     (le16_to_cpu(ncphy->agc_info) & IL49_AGC_DB_MASK) >>
     IL49_AGC_DB_POS;

 u32 valid_antennae =
     (le16_to_cpu(rx_resp->phy_flags) & IL49_RX_PHY_FLAGS_ANTENNAE_MASK)
     >> IL49_RX_PHY_FLAGS_ANTENNAE_OFFSET;
 u8 max_rssi = 0;
 u32 i;






 for (i = 0; i < 3; i++)
  if (valid_antennae & (1 << i))
   max_rssi = max(ncphy->rssi_info[i << 1], max_rssi);

 D_STATS("Rssi In A %d B %d C %d Max %d AGC dB %d\n",
  ncphy->rssi_info[0], ncphy->rssi_info[2], ncphy->rssi_info[4],
  max_rssi, agc);



 return max_rssi - agc - IL4965_RSSI_OFFSET;
}
