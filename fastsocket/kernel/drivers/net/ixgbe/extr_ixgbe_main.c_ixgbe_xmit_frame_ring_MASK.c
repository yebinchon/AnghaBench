#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct vlan_hdr {scalar_t__ h_vlan_encapsulated_proto; int /*<<< orphan*/  h_vlan_TCI; } ;
struct vlan_ethhdr {int /*<<< orphan*/  h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; int priority; scalar_t__ data; int /*<<< orphan*/  len; } ;
struct ixgbe_tx_buffer {int gso_segs; int tx_flags; struct sk_buff* skb; scalar_t__ protocol; int /*<<< orphan*/  bytecount; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_busy; } ;
struct ixgbe_ring {size_t next_to_use; int /*<<< orphan*/  state; TYPE_3__* netdev; struct ixgbe_tx_buffer* tx_buffer_info; TYPE_2__ tx_stats; } ;
struct ixgbe_adapter {int flags; int /*<<< orphan*/  ptp_tx_work; int /*<<< orphan*/  ptp_tx_start; int /*<<< orphan*/  ptp_tx_skb; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  _vhdr ;
typedef  scalar_t__ __be16 ;
struct TYPE_10__ {unsigned short nr_frags; TYPE_1__* frags; } ;
struct TYPE_9__ {int in_progress; int /*<<< orphan*/  hardware; } ;
struct TYPE_8__ {int features; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 scalar_t__ DESC_NEEDED ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_FCOE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IXGBE_FLAG_DCB_ENABLED ; 
 int IXGBE_FLAG_SRIOV_ENABLED ; 
 int IXGBE_TX_FLAGS_CC ; 
 int IXGBE_TX_FLAGS_HW_VLAN ; 
 int IXGBE_TX_FLAGS_SW_VLAN ; 
 int IXGBE_TX_FLAGS_TSTAMP ; 
 int IXGBE_TX_FLAGS_VLAN_PRIO_MASK ; 
 int IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT ; 
 int IXGBE_TX_FLAGS_VLAN_SHIFT ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int NETIF_F_FCOE_CRC ; 
 int NETIF_F_FSO ; 
 int TC_PRIO_CONTROL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGBE_TX_FDIR_INIT_DONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_ring*,struct ixgbe_tx_buffer*) ; 
 int FUNC5 (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ixgbe_ring*,scalar_t__) ; 
 int FUNC7 (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_ring*,struct ixgbe_tx_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 struct vlan_hdr* FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int,struct vlan_hdr*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 TYPE_5__* FUNC17 (struct sk_buff*) ; 
 TYPE_4__* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (struct sk_buff*) ; 
 scalar_t__ FUNC23 (struct sk_buff*) ; 

netdev_tx_t FUNC24(struct sk_buff *skb,
			  struct ixgbe_adapter *adapter,
			  struct ixgbe_ring *tx_ring)
{
	struct ixgbe_tx_buffer *first;
	int tso;
	u32 tx_flags = 0;
	unsigned short f;
	u16 count = FUNC0(FUNC16(skb));
	__be16 protocol = skb->protocol;
	u8 hdr_len = 0;

	/*
	 * need: 1 descriptor per page * PAGE_SIZE/IXGBE_MAX_DATA_PER_TXD,
	 *       + 1 desc for skb_headlen/IXGBE_MAX_DATA_PER_TXD,
	 *       + 2 desc gap to keep tail from touching head,
	 *       + 1 desc for context descriptor,
	 * otherwise try next time
	 */
	for (f = 0; f < FUNC17(skb)->nr_frags; f++)
		count += FUNC0(FUNC17(skb)->frags[f].size);

	if (FUNC6(tx_ring, count + 3)) {
		tx_ring->tx_stats.tx_busy++;
		return NETDEV_TX_BUSY;
	}

	/* record the location of the first descriptor for this packet */
	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
	first->skb = skb;
	first->bytecount = skb->len;
	first->gso_segs = 1;

	/* if we have a HW VLAN tag being added default to the HW one */
	if (FUNC23(skb)) {
		tx_flags |= FUNC22(skb) << IXGBE_TX_FLAGS_VLAN_SHIFT;
		tx_flags |= IXGBE_TX_FLAGS_HW_VLAN;
	/* else if it is a SW VLAN check the next protocol and store the tag */
	} else if (protocol == FUNC1(ETH_P_8021Q)) {
		struct vlan_hdr *vhdr, _vhdr;
		vhdr = FUNC15(skb, ETH_HLEN, sizeof(_vhdr), &_vhdr);
		if (!vhdr)
			goto out_drop;

		protocol = vhdr->h_vlan_encapsulated_proto;
		tx_flags |= FUNC10(vhdr->h_vlan_TCI) <<
				  IXGBE_TX_FLAGS_VLAN_SHIFT;
		tx_flags |= IXGBE_TX_FLAGS_SW_VLAN;
	}

	FUNC19(skb);

#ifdef CONFIG_IXGBE_PTP
	if (unlikely(skb_tx(skb)->hardware)) {
		skb_tx(skb)->in_progress = 1;
		tx_flags |= IXGBE_TX_FLAGS_TSTAMP;

		/* schedule check for Tx timestamp */
		adapter->ptp_tx_skb = skb_get(skb);
		adapter->ptp_tx_start = jiffies;
		schedule_work(&adapter->ptp_tx_work);
	}
#endif

#ifdef CONFIG_PCI_IOV
	/*
	 * Use the l2switch_enable flag - would be false if the DMA
	 * Tx switch had been disabled.
	 */
	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
		tx_flags |= IXGBE_TX_FLAGS_CC;

#endif
	/* DCB maps skb priorities 0-7 onto 3 bit PCP of VLAN tag. */
	if ((adapter->flags & IXGBE_FLAG_DCB_ENABLED) &&
	    ((tx_flags & (IXGBE_TX_FLAGS_HW_VLAN | IXGBE_TX_FLAGS_SW_VLAN)) ||
	     (skb->priority != TC_PRIO_CONTROL))) {
		tx_flags &= ~IXGBE_TX_FLAGS_VLAN_PRIO_MASK;
		tx_flags |= (skb->priority & 0x7) <<
					IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT;
		if (tx_flags & IXGBE_TX_FLAGS_SW_VLAN) {
			struct vlan_ethhdr *vhdr;
			if (FUNC14(skb) &&
			    FUNC11(skb, 0, 0, GFP_ATOMIC))
				goto out_drop;
			vhdr = (struct vlan_ethhdr *)skb->data;
			vhdr->h_vlan_TCI = FUNC3(tx_flags >>
						 IXGBE_TX_FLAGS_VLAN_SHIFT);
		} else {
			tx_flags |= IXGBE_TX_FLAGS_HW_VLAN;
		}
	}

	/* record initial flags and protocol */
	first->tx_flags = tx_flags;
	first->protocol = protocol;

#ifdef IXGBE_FCOE
	/* setup tx offload for FCoE */
	if ((protocol == __constant_htons(ETH_P_FCOE)) &&
	    (tx_ring->netdev->features & (NETIF_F_FSO | NETIF_F_FCOE_CRC))) {
		tso = ixgbe_fso(tx_ring, first, &hdr_len);
		if (tso < 0)
			goto out_drop;

		goto xmit_fcoe;
	}

#endif /* IXGBE_FCOE */
	tso = FUNC7(tx_ring, first, &hdr_len);
	if (tso < 0)
		goto out_drop;
	else if (!tso)
		FUNC8(tx_ring, first);

	/* add the ATR filter if ATR is on */
	if (FUNC20(__IXGBE_TX_FDIR_INIT_DONE, &tx_ring->state))
		FUNC4(tx_ring, first);

#ifdef IXGBE_FCOE
xmit_fcoe:
#endif /* IXGBE_FCOE */
	FUNC9(tx_ring, first, hdr_len);

	FUNC6(tx_ring, DESC_NEEDED);

	return NETDEV_TX_OK;

out_drop:
	FUNC2(first->skb);
	first->skb = NULL;

	return NETDEV_TX_OK;
}