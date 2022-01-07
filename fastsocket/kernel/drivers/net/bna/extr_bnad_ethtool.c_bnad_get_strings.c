
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct bnad {int num_rx; int num_rxp_per_rx; int num_tx; int num_txq_per_tx; int conf_mutex; TYPE_4__* tx_info; TYPE_5__* rx_info; int bna; } ;
struct TYPE_10__ {TYPE_3__* rx_ctrl; int rx; } ;
struct TYPE_9__ {int tx; } ;
struct TYPE_8__ {TYPE_2__* ccb; } ;
struct TYPE_7__ {TYPE_1__** rcb; } ;
struct TYPE_6__ {int rxq; } ;


 int BNAD_ETHTOOL_STATS_NUM ;
 int BUG_ON (int) ;
 int ETH_GSTRING_LEN ;

 int bna_rx_rid_mask (int *) ;
 int bna_tx_rid_mask (int *) ;
 int * bnad_net_stats_strings ;
 int memcpy (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int sprintf (int *,char*,int) ;
 int strlen (int ) ;

__attribute__((used)) static void
bnad_get_strings(struct net_device *netdev, u32 stringset, u8 *string)
{
 struct bnad *bnad = netdev_priv(netdev);
 int i, j, q_num;
 u32 bmap;

 mutex_lock(&bnad->conf_mutex);

 switch (stringset) {
 case 128:
  for (i = 0; i < BNAD_ETHTOOL_STATS_NUM; i++) {
   BUG_ON(!(strlen(bnad_net_stats_strings[i]) <
       ETH_GSTRING_LEN));
   memcpy(string, bnad_net_stats_strings[i],
          ETH_GSTRING_LEN);
   string += ETH_GSTRING_LEN;
  }
  bmap = bna_tx_rid_mask(&bnad->bna);
  for (i = 0; bmap; i++) {
   if (bmap & 1) {
    sprintf(string, "txf%d_ucast_octets", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txf%d_ucast", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txf%d_ucast_vlan", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txf%d_mcast_octets", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txf%d_mcast", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txf%d_mcast_vlan", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txf%d_bcast_octets", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txf%d_bcast", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txf%d_bcast_vlan", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txf%d_errors", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txf%d_filter_vlan", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txf%d_filter_mac_sa", i);
    string += ETH_GSTRING_LEN;
   }
   bmap >>= 1;
  }

  bmap = bna_rx_rid_mask(&bnad->bna);
  for (i = 0; bmap; i++) {
   if (bmap & 1) {
    sprintf(string, "rxf%d_ucast_octets", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxf%d_ucast", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxf%d_ucast_vlan", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxf%d_mcast_octets", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxf%d_mcast", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxf%d_mcast_vlan", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxf%d_bcast_octets", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxf%d_bcast", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxf%d_bcast_vlan", i);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxf%d_frame_drops", i);
    string += ETH_GSTRING_LEN;
   }
   bmap >>= 1;
  }

  q_num = 0;
  for (i = 0; i < bnad->num_rx; i++) {
   if (!bnad->rx_info[i].rx)
    continue;
   for (j = 0; j < bnad->num_rxp_per_rx; j++) {
    sprintf(string, "cq%d_producer_index", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "cq%d_consumer_index", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "cq%d_hw_producer_index",
     q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "cq%d_intr", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "cq%d_poll", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "cq%d_schedule", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "cq%d_keep_poll", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "cq%d_complete", q_num);
    string += ETH_GSTRING_LEN;
    q_num++;
   }
  }

  q_num = 0;
  for (i = 0; i < bnad->num_rx; i++) {
   if (!bnad->rx_info[i].rx)
    continue;
   for (j = 0; j < bnad->num_rxp_per_rx; j++) {
    sprintf(string, "rxq%d_packets", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxq%d_bytes", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxq%d_packets_with_error",
        q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxq%d_allocbuf_failed", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxq%d_producer_index", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "rxq%d_consumer_index", q_num);
    string += ETH_GSTRING_LEN;
    q_num++;
    if (bnad->rx_info[i].rx_ctrl[j].ccb &&
     bnad->rx_info[i].rx_ctrl[j].ccb->
     rcb[1] &&
     bnad->rx_info[i].rx_ctrl[j].ccb->
     rcb[1]->rxq) {
     sprintf(string, "rxq%d_packets", q_num);
     string += ETH_GSTRING_LEN;
     sprintf(string, "rxq%d_bytes", q_num);
     string += ETH_GSTRING_LEN;
     sprintf(string,
     "rxq%d_packets_with_error", q_num);
     string += ETH_GSTRING_LEN;
     sprintf(string, "rxq%d_allocbuf_failed",
        q_num);
     string += ETH_GSTRING_LEN;
     sprintf(string, "rxq%d_producer_index",
        q_num);
     string += ETH_GSTRING_LEN;
     sprintf(string, "rxq%d_consumer_index",
        q_num);
     string += ETH_GSTRING_LEN;
     q_num++;
    }
   }
  }

  q_num = 0;
  for (i = 0; i < bnad->num_tx; i++) {
   if (!bnad->tx_info[i].tx)
    continue;
   for (j = 0; j < bnad->num_txq_per_tx; j++) {
    sprintf(string, "txq%d_packets", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txq%d_bytes", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txq%d_producer_index", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txq%d_consumer_index", q_num);
    string += ETH_GSTRING_LEN;
    sprintf(string, "txq%d_hw_consumer_index",
         q_num);
    string += ETH_GSTRING_LEN;
    q_num++;
   }
  }

  break;

 default:
  break;
 }

 mutex_unlock(&bnad->conf_mutex);
}
