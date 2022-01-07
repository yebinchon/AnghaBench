
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_mac_stats {int tx_control; int rx_control; scalar_t__ rx_good_bytes; scalar_t__ rx_bytes; int rx_bad_bytes; scalar_t__ tx_bad_bytes; scalar_t__ tx_bytes; int tx_good_bytes; } ;
struct efx_nic {struct efx_mac_stats mac_stats; } ;


 int FALCON_STAT (struct efx_nic*,int ,int ) ;
 int XgRxAlignError ;
 int XgRxBroadcastPkts ;
 int XgRxControlPkts ;
 int XgRxDropEvents ;
 int XgRxFCSerrorPkts ;
 int XgRxInternalMACError ;
 int XgRxJabberPkts ;
 int XgRxLengthError ;
 int XgRxMulticastPkts ;
 int XgRxOctets ;
 int XgRxOctetsOK ;
 int XgRxOversizePkts ;
 int XgRxPausePkts ;
 int XgRxPkts ;
 int XgRxPkts1024to15xxOctets ;
 int XgRxPkts128to255Octets ;
 int XgRxPkts15xxtoMaxOctets ;
 int XgRxPkts256to511Octets ;
 int XgRxPkts512to1023Octets ;
 int XgRxPkts64Octets ;
 int XgRxPkts65to127Octets ;
 int XgRxPktsOK ;
 int XgRxSymbolError ;
 int XgRxUndersizeFCSerrorPkts ;
 int XgRxUndersizePkts ;
 int XgRxUnicastPkts ;
 int XgTxBroadcastPkts ;
 int XgTxControlPkts ;
 int XgTxIpSrcErrPkt ;
 int XgTxMacSrcErrPkt ;
 int XgTxMulticastPkts ;
 int XgTxNonTcpUdpPkt ;
 int XgTxOctets ;
 int XgTxOversizePkts ;
 int XgTxPausePkts ;
 int XgTxPkts ;
 int XgTxPkts1024to15xxOctets ;
 int XgTxPkts128to255Octets ;
 int XgTxPkts1519toMaxOctets ;
 int XgTxPkts256to511Octets ;
 int XgTxPkts512to1023Octets ;
 int XgTxPkts64Octets ;
 int XgTxPkts65to127Octets ;
 int XgTxUndersizePkts ;
 int XgTxUnicastPkts ;
 int efx_update_diff_stat (int *,scalar_t__) ;
 int rx_1024_to_15xx ;
 int rx_128_to_255 ;
 int rx_15xx_to_jumbo ;
 int rx_256_to_511 ;
 int rx_512_to_1023 ;
 int rx_64 ;
 int rx_65_to_127 ;
 int rx_align_error ;
 int rx_bad ;
 int rx_bad_gtjumbo ;
 int rx_bad_lt64 ;
 int rx_broadcast ;
 int rx_bytes ;
 int rx_control ;
 int rx_good ;
 int rx_good_bytes ;
 int rx_gtjumbo ;
 int rx_internal_error ;
 int rx_length_error ;
 int rx_lt64 ;
 int rx_multicast ;
 int rx_overflow ;
 int rx_packets ;
 int rx_pause ;
 int rx_symbol_error ;
 int rx_unicast ;
 int tx_1024_to_15xx ;
 int tx_128_to_255 ;
 int tx_15xx_to_jumbo ;
 int tx_256_to_511 ;
 int tx_512_to_1023 ;
 int tx_64 ;
 int tx_65_to_127 ;
 int tx_broadcast ;
 int tx_bytes ;
 int tx_control ;
 int tx_gtjumbo ;
 int tx_ip_src_error ;
 int tx_lt64 ;
 int tx_mac_src_error ;
 int tx_multicast ;
 int tx_non_tcpudp ;
 int tx_packets ;
 int tx_pause ;
 int tx_unicast ;

void falcon_update_stats_xmac(struct efx_nic *efx)
{
 struct efx_mac_stats *mac_stats = &efx->mac_stats;


 FALCON_STAT(efx, XgRxOctets, rx_bytes);
 FALCON_STAT(efx, XgRxOctetsOK, rx_good_bytes);
 FALCON_STAT(efx, XgRxPkts, rx_packets);
 FALCON_STAT(efx, XgRxPktsOK, rx_good);
 FALCON_STAT(efx, XgRxBroadcastPkts, rx_broadcast);
 FALCON_STAT(efx, XgRxMulticastPkts, rx_multicast);
 FALCON_STAT(efx, XgRxUnicastPkts, rx_unicast);
 FALCON_STAT(efx, XgRxUndersizePkts, rx_lt64);
 FALCON_STAT(efx, XgRxOversizePkts, rx_gtjumbo);
 FALCON_STAT(efx, XgRxJabberPkts, rx_bad_gtjumbo);
 FALCON_STAT(efx, XgRxUndersizeFCSerrorPkts, rx_bad_lt64);
 FALCON_STAT(efx, XgRxDropEvents, rx_overflow);
 FALCON_STAT(efx, XgRxFCSerrorPkts, rx_bad);
 FALCON_STAT(efx, XgRxAlignError, rx_align_error);
 FALCON_STAT(efx, XgRxSymbolError, rx_symbol_error);
 FALCON_STAT(efx, XgRxInternalMACError, rx_internal_error);
 FALCON_STAT(efx, XgRxControlPkts, rx_control);
 FALCON_STAT(efx, XgRxPausePkts, rx_pause);
 FALCON_STAT(efx, XgRxPkts64Octets, rx_64);
 FALCON_STAT(efx, XgRxPkts65to127Octets, rx_65_to_127);
 FALCON_STAT(efx, XgRxPkts128to255Octets, rx_128_to_255);
 FALCON_STAT(efx, XgRxPkts256to511Octets, rx_256_to_511);
 FALCON_STAT(efx, XgRxPkts512to1023Octets, rx_512_to_1023);
 FALCON_STAT(efx, XgRxPkts1024to15xxOctets, rx_1024_to_15xx);
 FALCON_STAT(efx, XgRxPkts15xxtoMaxOctets, rx_15xx_to_jumbo);
 FALCON_STAT(efx, XgRxLengthError, rx_length_error);
 FALCON_STAT(efx, XgTxPkts, tx_packets);
 FALCON_STAT(efx, XgTxOctets, tx_bytes);
 FALCON_STAT(efx, XgTxMulticastPkts, tx_multicast);
 FALCON_STAT(efx, XgTxBroadcastPkts, tx_broadcast);
 FALCON_STAT(efx, XgTxUnicastPkts, tx_unicast);
 FALCON_STAT(efx, XgTxControlPkts, tx_control);
 FALCON_STAT(efx, XgTxPausePkts, tx_pause);
 FALCON_STAT(efx, XgTxPkts64Octets, tx_64);
 FALCON_STAT(efx, XgTxPkts65to127Octets, tx_65_to_127);
 FALCON_STAT(efx, XgTxPkts128to255Octets, tx_128_to_255);
 FALCON_STAT(efx, XgTxPkts256to511Octets, tx_256_to_511);
 FALCON_STAT(efx, XgTxPkts512to1023Octets, tx_512_to_1023);
 FALCON_STAT(efx, XgTxPkts1024to15xxOctets, tx_1024_to_15xx);
 FALCON_STAT(efx, XgTxPkts1519toMaxOctets, tx_15xx_to_jumbo);
 FALCON_STAT(efx, XgTxUndersizePkts, tx_lt64);
 FALCON_STAT(efx, XgTxOversizePkts, tx_gtjumbo);
 FALCON_STAT(efx, XgTxNonTcpUdpPkt, tx_non_tcpudp);
 FALCON_STAT(efx, XgTxMacSrcErrPkt, tx_mac_src_error);
 FALCON_STAT(efx, XgTxIpSrcErrPkt, tx_ip_src_error);


 efx_update_diff_stat(&mac_stats->tx_good_bytes,
        mac_stats->tx_bytes - mac_stats->tx_bad_bytes -
        mac_stats->tx_control * 64);
 efx_update_diff_stat(&mac_stats->rx_bad_bytes,
        mac_stats->rx_bytes - mac_stats->rx_good_bytes -
        mac_stats->rx_control * 64);
}
