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
typedef  unsigned int u8 ;
struct sk_buff {scalar_t__ len; unsigned int data_len; scalar_t__ ip_summed; scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
struct e1000_tx_ring {int last_tx_tso; unsigned int next_to_use; TYPE_2__* buffer_info; } ;
struct e1000_hw {int mac_type; scalar_t__ bus_type; } ;
struct e1000_adapter {int /*<<< orphan*/  fifo_stall_task; int /*<<< orphan*/  flags; scalar_t__ pcix_82544; struct e1000_tx_ring* tx_ring; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_6__ {unsigned int gso_size; unsigned int nr_frags; TYPE_1__* frags; } ;
struct TYPE_5__ {scalar_t__ time_stamp; } ;
struct TYPE_4__ {unsigned int size; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 unsigned int E1000_MAX_DATA_PER_TXD ; 
 unsigned int E1000_MAX_TXD_PWR ; 
 unsigned int E1000_TX_FLAGS_CSUM ; 
 unsigned int E1000_TX_FLAGS_IPV4 ; 
 unsigned int E1000_TX_FLAGS_TSO ; 
 unsigned int E1000_TX_FLAGS_VLAN ; 
 unsigned int E1000_TX_FLAGS_VLAN_SHIFT ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  drv ; 
#define  e1000_82544 128 
 int e1000_82547 ; 
 scalar_t__ FUNC3 (struct e1000_adapter*,struct sk_buff*) ; 
 scalar_t__ e1000_bus_type_pcix ; 
 int FUNC4 (struct net_device*,struct e1000_tx_ring*,int) ; 
 int FUNC5 (struct e1000_adapter*,struct e1000_tx_ring*,struct sk_buff*) ; 
 int FUNC6 (struct e1000_adapter*,struct e1000_tx_ring*,struct sk_buff*) ; 
 int FUNC7 (struct e1000_adapter*,struct e1000_tx_ring*,struct sk_buff*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_adapter*,struct e1000_tx_ring*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 unsigned int FUNC13 (unsigned int,unsigned int) ; 
 struct e1000_adapter* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 TYPE_3__* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 unsigned int FUNC21 (struct sk_buff*) ; 
 unsigned int FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int) ; 
 unsigned int FUNC25 (struct sk_buff*) ; 
 int FUNC26 (struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC27(struct sk_buff *skb,
				    struct net_device *netdev)
{
	struct e1000_adapter *adapter = FUNC14(netdev);
	struct e1000_hw *hw = &adapter->hw;
	struct e1000_tx_ring *tx_ring;
	unsigned int first, max_per_txd = E1000_MAX_DATA_PER_TXD;
	unsigned int max_txd_pwr = E1000_MAX_TXD_PWR;
	unsigned int tx_flags = 0;
	unsigned int len = FUNC17(skb);
	unsigned int nr_frags;
	unsigned int mss;
	int count = 0;
	int tso;
	unsigned int f;

	/* This goes back to the question of how to logically map a tx queue
	 * to a flow.  Right now, performance is impacted slightly negatively
	 * if using multiple tx queues.  If the stack breaks away from a
	 * single qdisc implementation, we can look at this again. */
	tx_ring = adapter->tx_ring;

	if (FUNC24(skb->len <= 0)) {
		FUNC2(skb);
		return NETDEV_TX_OK;
	}

	mss = FUNC19(skb)->gso_size;
	/* The controller does a simple calculation to
	 * make sure there is enough room in the FIFO before
	 * initiating the DMA for each buffer.  The calc is:
	 * 4 = ceil(buffer len/mss).  To make sure we don't
	 * overrun the FIFO, adjust the max buffer len if mss
	 * drops. */
	if (mss) {
		u8 hdr_len;
		max_per_txd = FUNC13(mss << 2, max_per_txd);
		max_txd_pwr = FUNC10(max_per_txd) - 1;

		hdr_len = FUNC21(skb) + FUNC22(skb);
		if (skb->data_len && hdr_len == len) {
			switch (hw->mac_type) {
				unsigned int pull_size;
			case e1000_82544:
				/* Make sure we have room to chop off 4 bytes,
				 * and that the end alignment will work out to
				 * this hardware's requirements
				 * NOTE: this is a TSO only workaround
				 * if end byte alignment not correct move us
				 * into the next dword */
				if ((unsigned long)(FUNC20(skb) - 1) & 4)
					break;
				/* fall through */
				pull_size = FUNC13((unsigned int)4, skb->data_len);
				if (!FUNC1(skb, pull_size)) {
					FUNC9(drv, "__pskb_pull_tail "
					      "failed.\n");
					FUNC2(skb);
					return NETDEV_TX_OK;
				}
				len = FUNC17(skb);
				break;
			default:
				/* do nothing */
				break;
			}
		}
	}

	/* reserve a descriptor for the offload context */
	if ((mss) || (skb->ip_summed == CHECKSUM_PARTIAL))
		count++;
	count++;

	/* Controller Erratum workaround */
	if (!skb->data_len && tx_ring->last_tx_tso && !FUNC18(skb))
		count++;

	count += FUNC0(len, max_txd_pwr);

	if (adapter->pcix_82544)
		count++;

	/* work-around for errata 10 and it applies to all controllers
	 * in PCI-X mode, so add one more descriptor to the count
	 */
	if (FUNC24((hw->bus_type == e1000_bus_type_pcix) &&
			(len > 2015)))
		count++;

	nr_frags = FUNC19(skb)->nr_frags;
	for (f = 0; f < nr_frags; f++)
		count += FUNC0(FUNC19(skb)->frags[f].size,
				       max_txd_pwr);
	if (adapter->pcix_82544)
		count += nr_frags;

	/* need: count + 2 desc gap to keep tail from touching
	 * head, otherwise try next time */
	if (FUNC24(FUNC4(netdev, tx_ring, count + 2)))
		return NETDEV_TX_BUSY;

	if (FUNC24((hw->mac_type == e1000_82547) &&
		     (FUNC3(adapter, skb)))) {
		FUNC15(netdev);
		if (!FUNC23(__E1000_DOWN, &adapter->flags))
			FUNC16(&adapter->fifo_stall_task, 1);
		return NETDEV_TX_BUSY;
	}

	if (FUNC24(FUNC26(skb))) {
		tx_flags |= E1000_TX_FLAGS_VLAN;
		tx_flags |= (FUNC25(skb) << E1000_TX_FLAGS_VLAN_SHIFT);
	}

	first = tx_ring->next_to_use;

	tso = FUNC5(adapter, tx_ring, skb);
	if (tso < 0) {
		FUNC2(skb);
		return NETDEV_TX_OK;
	}

	if (FUNC12(tso)) {
		if (FUNC12(hw->mac_type != e1000_82544))
			tx_ring->last_tx_tso = true;
		tx_flags |= E1000_TX_FLAGS_TSO;
	} else if (FUNC12(FUNC6(adapter, tx_ring, skb)))
		tx_flags |= E1000_TX_FLAGS_CSUM;

	if (FUNC12(skb->protocol == FUNC11(ETH_P_IP)))
		tx_flags |= E1000_TX_FLAGS_IPV4;

	count = FUNC7(adapter, tx_ring, skb, first, max_per_txd,
	                     nr_frags, mss);

	if (count) {
		FUNC8(adapter, tx_ring, tx_flags, count);
		/* Make sure there is space in the ring for the next send. */
		FUNC4(netdev, tx_ring, MAX_SKB_FRAGS + 2);

	} else {
		FUNC2(skb);
		tx_ring->buffer_info[first].time_stamp = 0;
		tx_ring->next_to_use = first;
	}

	return NETDEV_TX_OK;
}