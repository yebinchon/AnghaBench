
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnad {int num_rxp_per_rx; int rxq_depth; int rx_coalescing_timeo; } ;
struct TYPE_2__ {int hash_type; int hash_mask; int toeplitz_hash_key; } ;
struct bna_rx_config {int num_paths; void* vlan_strip_status; int small_buff_size; int q_depth; int rxp_type; TYPE_1__ rss_config; void* rss_status; int coalescing_timeo; int rx_type; } ;


 int BFI_ENET_RSS_IPV4 ;
 int BFI_ENET_RSS_IPV4_TCP ;
 int BFI_ENET_RSS_IPV6 ;
 int BFI_ENET_RSS_IPV6_TCP ;
 int BFI_SMALL_RXBUF_SIZE ;
 int BNA_RXP_SLR ;
 int BNA_RX_T_REGULAR ;
 void* BNA_STATUS_T_DISABLED ;
 void* BNA_STATUS_T_ENABLED ;
 int get_random_bytes (int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
bnad_init_rx_config(struct bnad *bnad, struct bna_rx_config *rx_config)
{
 rx_config->rx_type = BNA_RX_T_REGULAR;
 rx_config->num_paths = bnad->num_rxp_per_rx;
 rx_config->coalescing_timeo = bnad->rx_coalescing_timeo;

 if (bnad->num_rxp_per_rx > 1) {
  rx_config->rss_status = BNA_STATUS_T_ENABLED;
  rx_config->rss_config.hash_type =
    (BFI_ENET_RSS_IPV6 |
     BFI_ENET_RSS_IPV6_TCP |
     BFI_ENET_RSS_IPV4 |
     BFI_ENET_RSS_IPV4_TCP);
  rx_config->rss_config.hash_mask =
    bnad->num_rxp_per_rx - 1;
  get_random_bytes(rx_config->rss_config.toeplitz_hash_key,
   sizeof(rx_config->rss_config.toeplitz_hash_key));
 } else {
  rx_config->rss_status = BNA_STATUS_T_DISABLED;
  memset(&rx_config->rss_config, 0,
         sizeof(rx_config->rss_config));
 }
 rx_config->rxp_type = BNA_RXP_SLR;
 rx_config->q_depth = bnad->rxq_depth;

 rx_config->small_buff_size = BFI_SMALL_RXBUF_SIZE;

 rx_config->vlan_strip_status = BNA_STATUS_T_ENABLED;
}
