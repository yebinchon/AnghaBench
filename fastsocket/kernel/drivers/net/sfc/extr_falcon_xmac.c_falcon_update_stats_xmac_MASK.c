#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct efx_mac_stats {int tx_control; int rx_control; scalar_t__ rx_good_bytes; scalar_t__ rx_bytes; int /*<<< orphan*/  rx_bad_bytes; scalar_t__ tx_bad_bytes; scalar_t__ tx_bytes; int /*<<< orphan*/  tx_good_bytes; } ;
struct efx_nic {struct efx_mac_stats mac_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XgRxAlignError ; 
 int /*<<< orphan*/  XgRxBroadcastPkts ; 
 int /*<<< orphan*/  XgRxControlPkts ; 
 int /*<<< orphan*/  XgRxDropEvents ; 
 int /*<<< orphan*/  XgRxFCSerrorPkts ; 
 int /*<<< orphan*/  XgRxInternalMACError ; 
 int /*<<< orphan*/  XgRxJabberPkts ; 
 int /*<<< orphan*/  XgRxLengthError ; 
 int /*<<< orphan*/  XgRxMulticastPkts ; 
 int /*<<< orphan*/  XgRxOctets ; 
 int /*<<< orphan*/  XgRxOctetsOK ; 
 int /*<<< orphan*/  XgRxOversizePkts ; 
 int /*<<< orphan*/  XgRxPausePkts ; 
 int /*<<< orphan*/  XgRxPkts ; 
 int /*<<< orphan*/  XgRxPkts1024to15xxOctets ; 
 int /*<<< orphan*/  XgRxPkts128to255Octets ; 
 int /*<<< orphan*/  XgRxPkts15xxtoMaxOctets ; 
 int /*<<< orphan*/  XgRxPkts256to511Octets ; 
 int /*<<< orphan*/  XgRxPkts512to1023Octets ; 
 int /*<<< orphan*/  XgRxPkts64Octets ; 
 int /*<<< orphan*/  XgRxPkts65to127Octets ; 
 int /*<<< orphan*/  XgRxPktsOK ; 
 int /*<<< orphan*/  XgRxSymbolError ; 
 int /*<<< orphan*/  XgRxUndersizeFCSerrorPkts ; 
 int /*<<< orphan*/  XgRxUndersizePkts ; 
 int /*<<< orphan*/  XgRxUnicastPkts ; 
 int /*<<< orphan*/  XgTxBroadcastPkts ; 
 int /*<<< orphan*/  XgTxControlPkts ; 
 int /*<<< orphan*/  XgTxIpSrcErrPkt ; 
 int /*<<< orphan*/  XgTxMacSrcErrPkt ; 
 int /*<<< orphan*/  XgTxMulticastPkts ; 
 int /*<<< orphan*/  XgTxNonTcpUdpPkt ; 
 int /*<<< orphan*/  XgTxOctets ; 
 int /*<<< orphan*/  XgTxOversizePkts ; 
 int /*<<< orphan*/  XgTxPausePkts ; 
 int /*<<< orphan*/  XgTxPkts ; 
 int /*<<< orphan*/  XgTxPkts1024to15xxOctets ; 
 int /*<<< orphan*/  XgTxPkts128to255Octets ; 
 int /*<<< orphan*/  XgTxPkts1519toMaxOctets ; 
 int /*<<< orphan*/  XgTxPkts256to511Octets ; 
 int /*<<< orphan*/  XgTxPkts512to1023Octets ; 
 int /*<<< orphan*/  XgTxPkts64Octets ; 
 int /*<<< orphan*/  XgTxPkts65to127Octets ; 
 int /*<<< orphan*/  XgTxUndersizePkts ; 
 int /*<<< orphan*/  XgTxUnicastPkts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  rx_1024_to_15xx ; 
 int /*<<< orphan*/  rx_128_to_255 ; 
 int /*<<< orphan*/  rx_15xx_to_jumbo ; 
 int /*<<< orphan*/  rx_256_to_511 ; 
 int /*<<< orphan*/  rx_512_to_1023 ; 
 int /*<<< orphan*/  rx_64 ; 
 int /*<<< orphan*/  rx_65_to_127 ; 
 int /*<<< orphan*/  rx_align_error ; 
 int /*<<< orphan*/  rx_bad ; 
 int /*<<< orphan*/  rx_bad_gtjumbo ; 
 int /*<<< orphan*/  rx_bad_lt64 ; 
 int /*<<< orphan*/  rx_broadcast ; 
 int /*<<< orphan*/  rx_bytes ; 
 int /*<<< orphan*/  rx_control ; 
 int /*<<< orphan*/  rx_good ; 
 int /*<<< orphan*/  rx_good_bytes ; 
 int /*<<< orphan*/  rx_gtjumbo ; 
 int /*<<< orphan*/  rx_internal_error ; 
 int /*<<< orphan*/  rx_length_error ; 
 int /*<<< orphan*/  rx_lt64 ; 
 int /*<<< orphan*/  rx_multicast ; 
 int /*<<< orphan*/  rx_overflow ; 
 int /*<<< orphan*/  rx_packets ; 
 int /*<<< orphan*/  rx_pause ; 
 int /*<<< orphan*/  rx_symbol_error ; 
 int /*<<< orphan*/  rx_unicast ; 
 int /*<<< orphan*/  tx_1024_to_15xx ; 
 int /*<<< orphan*/  tx_128_to_255 ; 
 int /*<<< orphan*/  tx_15xx_to_jumbo ; 
 int /*<<< orphan*/  tx_256_to_511 ; 
 int /*<<< orphan*/  tx_512_to_1023 ; 
 int /*<<< orphan*/  tx_64 ; 
 int /*<<< orphan*/  tx_65_to_127 ; 
 int /*<<< orphan*/  tx_broadcast ; 
 int /*<<< orphan*/  tx_bytes ; 
 int /*<<< orphan*/  tx_control ; 
 int /*<<< orphan*/  tx_gtjumbo ; 
 int /*<<< orphan*/  tx_ip_src_error ; 
 int /*<<< orphan*/  tx_lt64 ; 
 int /*<<< orphan*/  tx_mac_src_error ; 
 int /*<<< orphan*/  tx_multicast ; 
 int /*<<< orphan*/  tx_non_tcpudp ; 
 int /*<<< orphan*/  tx_packets ; 
 int /*<<< orphan*/  tx_pause ; 
 int /*<<< orphan*/  tx_unicast ; 

void FUNC2(struct efx_nic *efx)
{
	struct efx_mac_stats *mac_stats = &efx->mac_stats;

	/* Update MAC stats from DMAed values */
	FUNC0(efx, XgRxOctets, rx_bytes);
	FUNC0(efx, XgRxOctetsOK, rx_good_bytes);
	FUNC0(efx, XgRxPkts, rx_packets);
	FUNC0(efx, XgRxPktsOK, rx_good);
	FUNC0(efx, XgRxBroadcastPkts, rx_broadcast);
	FUNC0(efx, XgRxMulticastPkts, rx_multicast);
	FUNC0(efx, XgRxUnicastPkts, rx_unicast);
	FUNC0(efx, XgRxUndersizePkts, rx_lt64);
	FUNC0(efx, XgRxOversizePkts, rx_gtjumbo);
	FUNC0(efx, XgRxJabberPkts, rx_bad_gtjumbo);
	FUNC0(efx, XgRxUndersizeFCSerrorPkts, rx_bad_lt64);
	FUNC0(efx, XgRxDropEvents, rx_overflow);
	FUNC0(efx, XgRxFCSerrorPkts, rx_bad);
	FUNC0(efx, XgRxAlignError, rx_align_error);
	FUNC0(efx, XgRxSymbolError, rx_symbol_error);
	FUNC0(efx, XgRxInternalMACError, rx_internal_error);
	FUNC0(efx, XgRxControlPkts, rx_control);
	FUNC0(efx, XgRxPausePkts, rx_pause);
	FUNC0(efx, XgRxPkts64Octets, rx_64);
	FUNC0(efx, XgRxPkts65to127Octets, rx_65_to_127);
	FUNC0(efx, XgRxPkts128to255Octets, rx_128_to_255);
	FUNC0(efx, XgRxPkts256to511Octets, rx_256_to_511);
	FUNC0(efx, XgRxPkts512to1023Octets, rx_512_to_1023);
	FUNC0(efx, XgRxPkts1024to15xxOctets, rx_1024_to_15xx);
	FUNC0(efx, XgRxPkts15xxtoMaxOctets, rx_15xx_to_jumbo);
	FUNC0(efx, XgRxLengthError, rx_length_error);
	FUNC0(efx, XgTxPkts, tx_packets);
	FUNC0(efx, XgTxOctets, tx_bytes);
	FUNC0(efx, XgTxMulticastPkts, tx_multicast);
	FUNC0(efx, XgTxBroadcastPkts, tx_broadcast);
	FUNC0(efx, XgTxUnicastPkts, tx_unicast);
	FUNC0(efx, XgTxControlPkts, tx_control);
	FUNC0(efx, XgTxPausePkts, tx_pause);
	FUNC0(efx, XgTxPkts64Octets, tx_64);
	FUNC0(efx, XgTxPkts65to127Octets, tx_65_to_127);
	FUNC0(efx, XgTxPkts128to255Octets, tx_128_to_255);
	FUNC0(efx, XgTxPkts256to511Octets, tx_256_to_511);
	FUNC0(efx, XgTxPkts512to1023Octets, tx_512_to_1023);
	FUNC0(efx, XgTxPkts1024to15xxOctets, tx_1024_to_15xx);
	FUNC0(efx, XgTxPkts1519toMaxOctets, tx_15xx_to_jumbo);
	FUNC0(efx, XgTxUndersizePkts, tx_lt64);
	FUNC0(efx, XgTxOversizePkts, tx_gtjumbo);
	FUNC0(efx, XgTxNonTcpUdpPkt, tx_non_tcpudp);
	FUNC0(efx, XgTxMacSrcErrPkt, tx_mac_src_error);
	FUNC0(efx, XgTxIpSrcErrPkt, tx_ip_src_error);

	/* Update derived statistics */
	FUNC1(&mac_stats->tx_good_bytes,
			     mac_stats->tx_bytes - mac_stats->tx_bad_bytes -
			     mac_stats->tx_control * 64);
	FUNC1(&mac_stats->rx_bad_bytes,
			     mac_stats->rx_bytes - mac_stats->rx_good_bytes -
			     mac_stats->rx_control * 64);
}