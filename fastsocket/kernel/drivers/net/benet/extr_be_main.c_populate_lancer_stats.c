
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lancer_pport_stats {int rx_drops_too_many_frags_lo; int rx_drops_mtu_lo; int num_forwards_lo; int rx_jabbers; int tx_control_frames_lo; int tx_pause_frames_lo; int rx_fifo_overflow; int rx_symbol_errors_lo; scalar_t__ rx_vlan_filtered; scalar_t__ rx_address_filtered; int rx_dropped_header_too_small; int rx_out_of_range_errors; int rx_dropped_too_short; int rx_dropped_too_small; int rx_dropped_invalid_tcp_length; int rx_udp_checksum_errors; int rx_tcp_checksum_errors; int rx_ip_checksum_errors; int rx_dropped_runt; int rx_frames_too_long_lo; int rx_in_range_errors; int rx_control_frames_lo; int rx_crc_errors_lo; int rx_pause_frames_lo; } ;
struct be_drv_stats {int rx_drops_too_many_frags; int rx_drops_mtu; int forwarded_packets; int jabber_events; int tx_controlframes; int tx_pauseframes; int rxpp_fifo_overflow_drop; int rx_alignment_symbol_errors; scalar_t__ rx_address_filtered; int rx_input_fifo_overflow_drop; int rx_dropped_header_too_small; int rx_out_range_errors; int rx_dropped_too_short; int rx_dropped_too_small; int rx_dropped_tcp_length; int rx_udp_checksum_errs; int rx_tcp_checksum_errs; int rx_ip_checksum_errs; int rx_dropped_runt; int rx_frame_too_long; int rx_in_range_errors; int rx_control_frames; int rx_crc_errors; int rx_pause_frames; } ;
struct be_adapter {struct be_drv_stats drv_stats; } ;


 int be_dws_le_to_cpu (struct lancer_pport_stats*,int) ;
 struct lancer_pport_stats* pport_stats_from_cmd (struct be_adapter*) ;

__attribute__((used)) static void populate_lancer_stats(struct be_adapter *adapter)
{

 struct be_drv_stats *drvs = &adapter->drv_stats;
 struct lancer_pport_stats *pport_stats =
     pport_stats_from_cmd(adapter);

 be_dws_le_to_cpu(pport_stats, sizeof(*pport_stats));
 drvs->rx_pause_frames = pport_stats->rx_pause_frames_lo;
 drvs->rx_crc_errors = pport_stats->rx_crc_errors_lo;
 drvs->rx_control_frames = pport_stats->rx_control_frames_lo;
 drvs->rx_in_range_errors = pport_stats->rx_in_range_errors;
 drvs->rx_frame_too_long = pport_stats->rx_frames_too_long_lo;
 drvs->rx_dropped_runt = pport_stats->rx_dropped_runt;
 drvs->rx_ip_checksum_errs = pport_stats->rx_ip_checksum_errors;
 drvs->rx_tcp_checksum_errs = pport_stats->rx_tcp_checksum_errors;
 drvs->rx_udp_checksum_errs = pport_stats->rx_udp_checksum_errors;
 drvs->rx_dropped_tcp_length =
    pport_stats->rx_dropped_invalid_tcp_length;
 drvs->rx_dropped_too_small = pport_stats->rx_dropped_too_small;
 drvs->rx_dropped_too_short = pport_stats->rx_dropped_too_short;
 drvs->rx_out_range_errors = pport_stats->rx_out_of_range_errors;
 drvs->rx_dropped_header_too_small =
    pport_stats->rx_dropped_header_too_small;
 drvs->rx_input_fifo_overflow_drop = pport_stats->rx_fifo_overflow;
 drvs->rx_address_filtered =
     pport_stats->rx_address_filtered +
     pport_stats->rx_vlan_filtered;
 drvs->rx_alignment_symbol_errors = pport_stats->rx_symbol_errors_lo;
 drvs->rxpp_fifo_overflow_drop = pport_stats->rx_fifo_overflow;
 drvs->tx_pauseframes = pport_stats->tx_pause_frames_lo;
 drvs->tx_controlframes = pport_stats->tx_control_frames_lo;
 drvs->jabber_events = pport_stats->rx_jabbers;
 drvs->forwarded_packets = pport_stats->num_forwards_lo;
 drvs->rx_drops_mtu = pport_stats->rx_drops_mtu_lo;
 drvs->rx_drops_too_many_frags =
    pport_stats->rx_drops_too_many_frags_lo;
}
