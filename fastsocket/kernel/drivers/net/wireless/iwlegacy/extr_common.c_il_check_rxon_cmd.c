
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_rxon_cmd {int flags; int* node_addr; int* bssid_addr; int ofdm_basic_rates; int cck_basic_rates; int channel; int assoc_id; } ;
struct il_priv {struct il_rxon_cmd staging; } ;


 int EINVAL ;
 int IL_ERR (char*) ;
 int IL_WARN (char*,...) ;
 int RATE_1M_MASK ;
 int RATE_6M_MASK ;
 int RXON_FLG_AUTO_DETECT_MSK ;
 int RXON_FLG_BAND_24G_MSK ;
 int RXON_FLG_CCK_MSK ;
 int RXON_FLG_RADAR_DETECT_MSK ;
 int RXON_FLG_SHORT_SLOT_MSK ;
 int RXON_FLG_TGG_PROTECT_MSK ;
 int RXON_FLG_TGJ_NARROW_BAND_MSK ;
 int le16_to_cpu (int ) ;

int
il_check_rxon_cmd(struct il_priv *il)
{
 struct il_rxon_cmd *rxon = &il->staging;
 bool error = 0;

 if (rxon->flags & RXON_FLG_BAND_24G_MSK) {
  if (rxon->flags & RXON_FLG_TGJ_NARROW_BAND_MSK) {
   IL_WARN("check 2.4G: wrong narrow\n");
   error = 1;
  }
  if (rxon->flags & RXON_FLG_RADAR_DETECT_MSK) {
   IL_WARN("check 2.4G: wrong radar\n");
   error = 1;
  }
 } else {
  if (!(rxon->flags & RXON_FLG_SHORT_SLOT_MSK)) {
   IL_WARN("check 5.2G: not short slot!\n");
   error = 1;
  }
  if (rxon->flags & RXON_FLG_CCK_MSK) {
   IL_WARN("check 5.2G: CCK!\n");
   error = 1;
  }
 }
 if ((rxon->node_addr[0] | rxon->bssid_addr[0]) & 0x1) {
  IL_WARN("mac/bssid mcast!\n");
  error = 1;
 }


 if ((rxon->ofdm_basic_rates & RATE_6M_MASK) == 0 &&
     (rxon->cck_basic_rates & RATE_1M_MASK) == 0) {
  IL_WARN("neither 1 nor 6 are basic\n");
  error = 1;
 }

 if (le16_to_cpu(rxon->assoc_id) > 2007) {
  IL_WARN("aid > 2007\n");
  error = 1;
 }

 if ((rxon->flags & (RXON_FLG_CCK_MSK | RXON_FLG_SHORT_SLOT_MSK)) ==
     (RXON_FLG_CCK_MSK | RXON_FLG_SHORT_SLOT_MSK)) {
  IL_WARN("CCK and short slot\n");
  error = 1;
 }

 if ((rxon->flags & (RXON_FLG_CCK_MSK | RXON_FLG_AUTO_DETECT_MSK)) ==
     (RXON_FLG_CCK_MSK | RXON_FLG_AUTO_DETECT_MSK)) {
  IL_WARN("CCK and auto detect");
  error = 1;
 }

 if ((rxon->
      flags & (RXON_FLG_AUTO_DETECT_MSK | RXON_FLG_TGG_PROTECT_MSK)) ==
     RXON_FLG_TGG_PROTECT_MSK) {
  IL_WARN("TGg but no auto-detect\n");
  error = 1;
 }

 if (error)
  IL_WARN("Tuning to channel %d\n", le16_to_cpu(rxon->channel));

 if (error) {
  IL_ERR("Invalid RXON\n");
  return -EINVAL;
 }
 return 0;
}
