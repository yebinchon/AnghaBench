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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_5__ {unsigned int packets; unsigned int bytes; } ;
struct ixgbe_ring {TYPE_2__ stats; TYPE_1__* netdev; int /*<<< orphan*/  next_to_clean; } ;
struct TYPE_6__ {unsigned int total_packets; unsigned int total_bytes; } ;
struct ixgbe_q_vector {TYPE_3__ rx; struct ixgbe_adapter* adapter; } ;
struct ixgbe_adapter {int dummy; } ;
struct fcoe_hdr {int dummy; } ;
struct fcoe_crc_eof {int dummy; } ;
struct fc_frame_header {int dummy; } ;
struct TYPE_4__ {int mtu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  IXGBE_RXD_STAT_DD ; 
 scalar_t__ IXGBE_RX_BUFFER_WRITE ; 
 union ixgbe_adv_rx_desc* FUNC1 (struct ixgbe_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_ring*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct ixgbe_ring*) ; 
 int FUNC6 (struct ixgbe_adapter*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*) ; 
 scalar_t__ FUNC8 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_q_vector*,struct sk_buff*,union ixgbe_adv_rx_desc*) ; 
 int /*<<< orphan*/  FUNC12 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static bool FUNC15(struct ixgbe_q_vector *q_vector,
			       struct ixgbe_ring *rx_ring,
			       const int budget)
{
	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
#ifdef IXGBE_FCOE
	struct ixgbe_adapter *adapter = q_vector->adapter;
	int ddp_bytes;
	unsigned int mss = 0;
#endif /* IXGBE_FCOE */
	u16 cleaned_count = FUNC5(rx_ring);

	do {
		union ixgbe_adv_rx_desc *rx_desc;
		struct sk_buff *skb;

		/* return some buffers to hardware, one at a time is too slow */
		if (cleaned_count >= IXGBE_RX_BUFFER_WRITE) {
			FUNC3(rx_ring, cleaned_count);
			cleaned_count = 0;
		}

		rx_desc = FUNC1(rx_ring, rx_ring->next_to_clean);

		if (!FUNC12(rx_desc, IXGBE_RXD_STAT_DD))
			break;

		/*
		 * This memory barrier is needed to keep us from reading
		 * any other fields out of the rx_desc until we know the
		 * RXD_STAT_DD bit is set
		 */
		FUNC14();

		/* retrieve a buffer from the ring */
		skb = FUNC7(rx_ring, rx_desc);

		/* exit if we failed to retrieve a buffer */
		if (!skb)
			break;

		cleaned_count++;

		/* place incomplete frames back on ring for completion */
		if (FUNC8(rx_ring, rx_desc, skb))
			continue;

		/* verify the packet layout is correct */
		if (FUNC4(rx_ring, rx_desc, skb))
			continue;

		/* probably a little skewed due to removing CRC */
		total_rx_bytes += skb->len;

		/* populate checksum, timestamp, VLAN, and protocol */
		FUNC9(rx_ring, rx_desc, skb);

#ifdef IXGBE_FCOE
		/* if ddp, not passing to ULD unless for FCP_RSP or error */
		if (ixgbe_rx_is_fcoe(rx_ring, rx_desc)) {
			ddp_bytes = ixgbe_fcoe_ddp(adapter, rx_desc, skb);
			/* include DDPed FCoE data */
			if (ddp_bytes > 0) {
				if (!mss) {
					mss = rx_ring->netdev->mtu -
						sizeof(struct fcoe_hdr) -
						sizeof(struct fc_frame_header) -
						sizeof(struct fcoe_crc_eof);
					if (mss > 512)
						mss &= ~511;
				}
				total_rx_bytes += ddp_bytes;
				total_rx_packets += DIV_ROUND_UP(ddp_bytes,
								 mss);
			}
			if (!ddp_bytes) {
				dev_kfree_skb_any(skb);
				continue;
			}
		}

#endif /* IXGBE_FCOE */
		FUNC11(q_vector, skb, rx_desc);

		/* update budget accounting */
		total_rx_packets++;
	} while (FUNC13(total_rx_packets < budget));

	rx_ring->stats.packets += total_rx_packets;
	rx_ring->stats.bytes += total_rx_bytes;
	q_vector->rx.total_packets += total_rx_packets;
	q_vector->rx.total_bytes += total_rx_bytes;

	if (cleaned_count)
		FUNC3(rx_ring, cleaned_count);

	return (total_rx_packets < budget);
}