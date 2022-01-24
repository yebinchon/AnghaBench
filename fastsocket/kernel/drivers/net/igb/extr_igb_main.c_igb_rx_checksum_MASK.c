#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  status_error; } ;
struct TYPE_6__ {TYPE_2__ upper; } ;
union e1000_adv_rx_desc {TYPE_3__ wb; } ;
struct sk_buff {int len; int /*<<< orphan*/  ip_summed; } ;
struct TYPE_4__ {int /*<<< orphan*/  csum_err; } ;
struct igb_ring {int /*<<< orphan*/  dev; TYPE_1__ rx_stats; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int E1000_RXDEXT_STATERR_IPE ; 
 int E1000_RXDEXT_STATERR_TCPE ; 
 int E1000_RXD_STAT_IXSM ; 
 int E1000_RXD_STAT_TCPCS ; 
 int E1000_RXD_STAT_UDPCS ; 
 int /*<<< orphan*/  IGB_RING_FLAG_RX_CSUM ; 
 int /*<<< orphan*/  IGB_RING_FLAG_RX_SCTP_CSUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (union e1000_adv_rx_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct igb_ring *ring,
				   union e1000_adv_rx_desc *rx_desc,
				   struct sk_buff *skb)
{
	skb->ip_summed = CHECKSUM_NONE;

	/* Ignore Checksum bit is set */
	if (FUNC1(rx_desc, E1000_RXD_STAT_IXSM))
		return;

	/* Rx checksum disabled via ethtool */
	if (!FUNC3(IGB_RING_FLAG_RX_CSUM, &ring->flags))
		return;

	/* TCP/UDP checksum error bit is set */
	if (FUNC1(rx_desc,
			     E1000_RXDEXT_STATERR_TCPE |
			     E1000_RXDEXT_STATERR_IPE)) {
		/* work around errata with sctp packets where the TCPE aka
		 * L4E bit is set incorrectly on 64 byte (60 byte w/o crc)
		 * packets, (aka let the stack check the crc32c)
		 */
		if (!((skb->len == 60) &&
		      FUNC3(IGB_RING_FLAG_RX_SCTP_CSUM, &ring->flags))) {
			ring->rx_stats.csum_err++;
		}
		/* let the stack verify checksum errors */
		return;
	}
	/* It must be a TCP or UDP packet with a valid checksum */
	if (FUNC1(rx_desc, E1000_RXD_STAT_TCPCS |
				      E1000_RXD_STAT_UDPCS))
		skb->ip_summed = CHECKSUM_UNNECESSARY;

	FUNC0(ring->dev, "cksum success: bits %08X\n",
		FUNC2(rx_desc->wb.upper.status_error));
}