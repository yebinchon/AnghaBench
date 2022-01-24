#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct tg3_rx_prodring_set {struct ring_info* rx_jmb_buffers; TYPE_1__* rx_jmb; struct ring_info* rx_std_buffers; struct tg3_rx_buffer_desc* rx_std; } ;
struct tg3_rx_buffer_desc {int addr_hi; int addr_lo; } ;
struct tg3 {int rx_std_ring_mask; int rx_pkt_map_sz; int rx_jmb_ring_mask; int /*<<< orphan*/  pdev; } ;
struct skb_shared_info {int dummy; } ;
struct ring_info {int /*<<< orphan*/ * data; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {struct tg3_rx_buffer_desc std; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
#define  RXD_OPAQUE_RING_JUMBO 129 
#define  RXD_OPAQUE_RING_STD 128 
 int FUNC0 (int) ; 
 int TG3_RX_JMB_MAP_SZ ; 
 int FUNC1 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC2 (struct ring_info*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct tg3 *tp, struct tg3_rx_prodring_set *tpr,
			    u32 opaque_key, u32 dest_idx_unmasked)
{
	struct tg3_rx_buffer_desc *desc;
	struct ring_info *map;
	u8 *data;
	dma_addr_t mapping;
	int skb_size, data_size, dest_idx;

	switch (opaque_key) {
	case RXD_OPAQUE_RING_STD:
		dest_idx = dest_idx_unmasked & tp->rx_std_ring_mask;
		desc = &tpr->rx_std[dest_idx];
		map = &tpr->rx_std_buffers[dest_idx];
		data_size = tp->rx_pkt_map_sz;
		break;

	case RXD_OPAQUE_RING_JUMBO:
		dest_idx = dest_idx_unmasked & tp->rx_jmb_ring_mask;
		desc = &tpr->rx_jmb[dest_idx].std;
		map = &tpr->rx_jmb_buffers[dest_idx];
		data_size = TG3_RX_JMB_MAP_SZ;
		break;

	default:
		return -EINVAL;
	}

	/* Do not overwrite any of the map or rp information
	 * until we are sure we can commit to a new buffer.
	 *
	 * Callers depend upon this behavior and assume that
	 * we leave everything unchanged if we fail.
	 */
	skb_size = FUNC0(data_size + FUNC1(tp)) +
		   FUNC0(sizeof(struct skb_shared_info));
	data = FUNC4(skb_size, GFP_ATOMIC);
	if (!data)
		return -ENOMEM;

	mapping = FUNC6(tp->pdev,
				 data + FUNC1(tp),
				 data_size,
				 PCI_DMA_FROMDEVICE);
	if (FUNC5(tp->pdev, mapping)) {
		FUNC3(data);
		return -EIO;
	}

	map->data = data;
	FUNC2(map, mapping, mapping);

	desc->addr_hi = ((u64)mapping >> 32);
	desc->addr_lo = ((u64)mapping & 0xffffffff);

	return data_size;
}