
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct stat_block {int rmac_fcs_err_frms; int rmac_long_frms; int rmac_usized_frms; int rmac_usized_frms_oflow; int rmac_pause_ctrl_frms; int rmac_vld_mcst_frms; int rmac_vld_mcst_frms_oflow; int tmac_drop_frms; int rmac_drop_frms; int tmac_any_err_frms; int tmac_any_err_frms_oflow; int tmac_data_octets; int tmac_data_octets_oflow; int rmac_data_octets; int rmac_data_octets_oflow; int tmac_frms; int tmac_frms_oflow; int rmac_vld_frms; int rmac_vld_frms_oflow; } ;
struct TYPE_2__ {int rx_packets; int tx_packets; int rx_bytes; int tx_bytes; int rx_errors; int tx_errors; int rx_dropped; int tx_dropped; int rx_length_errors; int rx_crc_errors; scalar_t__ multicast; } ;
struct mac_info {struct stat_block* stats_info; } ;
struct s2io_nic {TYPE_1__ stats; struct mac_info mac_control; } ;
struct net_device_stats {int rx_packets; int tx_packets; int rx_bytes; int tx_bytes; int rx_errors; int tx_errors; int rx_dropped; int tx_dropped; int multicast; int rx_length_errors; int rx_crc_errors; } ;
struct net_device {struct net_device_stats stats; } ;


 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 int s2io_updt_stats (struct s2io_nic*) ;

__attribute__((used)) static struct net_device_stats *s2io_get_stats(struct net_device *dev)
{
 struct s2io_nic *sp = netdev_priv(dev);
 struct mac_info *mac_control = &sp->mac_control;
 struct stat_block *stats = mac_control->stats_info;
 u64 delta;


 s2io_updt_stats(sp);
 delta = ((u64) le32_to_cpu(stats->rmac_vld_frms_oflow) << 32 |
  le32_to_cpu(stats->rmac_vld_frms)) - sp->stats.rx_packets;
 sp->stats.rx_packets += delta;
 dev->stats.rx_packets += delta;

 delta = ((u64) le32_to_cpu(stats->tmac_frms_oflow) << 32 |
  le32_to_cpu(stats->tmac_frms)) - sp->stats.tx_packets;
 sp->stats.tx_packets += delta;
 dev->stats.tx_packets += delta;

 delta = ((u64) le32_to_cpu(stats->rmac_data_octets_oflow) << 32 |
  le32_to_cpu(stats->rmac_data_octets)) - sp->stats.rx_bytes;
 sp->stats.rx_bytes += delta;
 dev->stats.rx_bytes += delta;

 delta = ((u64) le32_to_cpu(stats->tmac_data_octets_oflow) << 32 |
  le32_to_cpu(stats->tmac_data_octets)) - sp->stats.tx_bytes;
 sp->stats.tx_bytes += delta;
 dev->stats.tx_bytes += delta;

 delta = le64_to_cpu(stats->rmac_drop_frms) - sp->stats.rx_errors;
 sp->stats.rx_errors += delta;
 dev->stats.rx_errors += delta;

 delta = ((u64) le32_to_cpu(stats->tmac_any_err_frms_oflow) << 32 |
  le32_to_cpu(stats->tmac_any_err_frms)) - sp->stats.tx_errors;
 sp->stats.tx_errors += delta;
 dev->stats.tx_errors += delta;

 delta = le64_to_cpu(stats->rmac_drop_frms) - sp->stats.rx_dropped;
 sp->stats.rx_dropped += delta;
 dev->stats.rx_dropped += delta;

 delta = le64_to_cpu(stats->tmac_drop_frms) - sp->stats.tx_dropped;
 sp->stats.tx_dropped += delta;
 dev->stats.tx_dropped += delta;






 delta = (u64) le32_to_cpu(stats->rmac_vld_mcst_frms_oflow) << 32 |
  le32_to_cpu(stats->rmac_vld_mcst_frms);
 delta -= le64_to_cpu(stats->rmac_pause_ctrl_frms);
 delta -= sp->stats.multicast;
 sp->stats.multicast += delta;
 dev->stats.multicast += delta;

 delta = ((u64) le32_to_cpu(stats->rmac_usized_frms_oflow) << 32 |
  le32_to_cpu(stats->rmac_usized_frms)) +
  le64_to_cpu(stats->rmac_long_frms) - sp->stats.rx_length_errors;
 sp->stats.rx_length_errors += delta;
 dev->stats.rx_length_errors += delta;

 delta = le64_to_cpu(stats->rmac_fcs_err_frms) - sp->stats.rx_crc_errors;
 sp->stats.rx_crc_errors += delta;
 dev->stats.rx_crc_errors += delta;

 return &dev->stats;
}
