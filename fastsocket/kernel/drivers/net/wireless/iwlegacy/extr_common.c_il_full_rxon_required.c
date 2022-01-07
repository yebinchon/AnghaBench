
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_rxon_cmd {int dev_type; int channel; int air_propagation; int ofdm_ht_single_stream_basic_rates; int ofdm_ht_dual_stream_basic_rates; int assoc_id; int flags; int filter_flags; int wlap_bssid_addr; int node_addr; int bssid_addr; } ;
struct il_priv {struct il_rxon_cmd active; struct il_rxon_cmd staging; } ;


 int CHK (int) ;
 int CHK_NEQ (int,int) ;
 int RXON_FILTER_ASSOC_MSK ;
 int RXON_FLG_BAND_24G_MSK ;
 int ether_addr_equal (int ,int ) ;
 int il_is_associated (struct il_priv*) ;

int
il_full_rxon_required(struct il_priv *il)
{
 const struct il_rxon_cmd *staging = &il->staging;
 const struct il_rxon_cmd *active = &il->active;
 if ((!il_is_associated(il))) { D_INFO("need full RXON - " "!il_is_associated(il)" "\n"); return 1; };
 if ((!ether_addr_equal(staging->bssid_addr, active->bssid_addr))) { D_INFO("need full RXON - " "!ether_addr_equal(staging->bssid_addr, active->bssid_addr)" "\n"); return 1; };
 if ((!ether_addr_equal(staging->node_addr, active->node_addr))) { D_INFO("need full RXON - " "!ether_addr_equal(staging->node_addr, active->node_addr)" "\n"); return 1; };
 if ((!ether_addr_equal(staging->wlap_bssid_addr, active->wlap_bssid_addr))) { D_INFO("need full RXON - " "!ether_addr_equal(staging->wlap_bssid_addr, active->wlap_bssid_addr)" "\n"); return 1; };

 if ((staging->dev_type) != (active->dev_type)) { D_INFO("need full RXON - " "staging->dev_type" " != " "active->dev_type" " - %d != %d\n", (staging->dev_type), (active->dev_type)); return 1; };
 if ((staging->channel) != (active->channel)) { D_INFO("need full RXON - " "staging->channel" " != " "active->channel" " - %d != %d\n", (staging->channel), (active->channel)); return 1; };
 if ((staging->air_propagation) != (active->air_propagation)) { D_INFO("need full RXON - " "staging->air_propagation" " != " "active->air_propagation" " - %d != %d\n", (staging->air_propagation), (active->air_propagation)); return 1; };
 if ((staging->ofdm_ht_single_stream_basic_rates) != (active->ofdm_ht_single_stream_basic_rates)) { D_INFO("need full RXON - " "staging->ofdm_ht_single_stream_basic_rates" " != " "active->ofdm_ht_single_stream_basic_rates" " - %d != %d\n", (staging->ofdm_ht_single_stream_basic_rates), (active->ofdm_ht_single_stream_basic_rates)); return 1; };

 if ((staging->ofdm_ht_dual_stream_basic_rates) != (active->ofdm_ht_dual_stream_basic_rates)) { D_INFO("need full RXON - " "staging->ofdm_ht_dual_stream_basic_rates" " != " "active->ofdm_ht_dual_stream_basic_rates" " - %d != %d\n", (staging->ofdm_ht_dual_stream_basic_rates), (active->ofdm_ht_dual_stream_basic_rates)); return 1; };

 if ((staging->assoc_id) != (active->assoc_id)) { D_INFO("need full RXON - " "staging->assoc_id" " != " "active->assoc_id" " - %d != %d\n", (staging->assoc_id), (active->assoc_id)); return 1; };






 if ((staging->flags & RXON_FLG_BAND_24G_MSK) != (active->flags & RXON_FLG_BAND_24G_MSK)) { D_INFO("need full RXON - " "staging->flags & RXON_FLG_BAND_24G_MSK" " != " "active->flags & RXON_FLG_BAND_24G_MSK" " - %d != %d\n", (staging->flags & RXON_FLG_BAND_24G_MSK), (active->flags & RXON_FLG_BAND_24G_MSK)); return 1; };



 if ((staging->filter_flags & RXON_FILTER_ASSOC_MSK) != (active->filter_flags & RXON_FILTER_ASSOC_MSK)) { D_INFO("need full RXON - " "staging->filter_flags & RXON_FILTER_ASSOC_MSK" " != " "active->filter_flags & RXON_FILTER_ASSOC_MSK" " - %d != %d\n", (staging->filter_flags & RXON_FILTER_ASSOC_MSK), (active->filter_flags & RXON_FILTER_ASSOC_MSK)); return 1; };





 return 0;
}
