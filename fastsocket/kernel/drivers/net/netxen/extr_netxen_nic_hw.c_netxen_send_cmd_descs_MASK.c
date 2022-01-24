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
typedef  int u32 ;
struct nx_host_tx_ring {int producer; int sw_consumer; int /*<<< orphan*/  txq; int /*<<< orphan*/  num_desc; int /*<<< orphan*/ * desc_head; struct netxen_cmd_buffer* cmd_buf_arr; } ;
struct netxen_cmd_buffer {scalar_t__ frag_count; int /*<<< orphan*/ * skb; } ;
struct netxen_adapter {scalar_t__ is_up; struct nx_host_tx_ring* tx_ring; } ;
struct cmd_desc_type0 {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 scalar_t__ NETXEN_ADAPTER_UP_MAGIC ; 
 int TX_STOP_THRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cmd_desc_type0*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct netxen_adapter*,struct nx_host_tx_ring*) ; 
 int FUNC7 (struct nx_host_tx_ring*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int
FUNC9(struct netxen_adapter *adapter,
		struct cmd_desc_type0 *cmd_desc_arr, int nr_desc)
{
	u32 i, producer, consumer;
	struct netxen_cmd_buffer *pbuf;
	struct cmd_desc_type0 *cmd_desc;
	struct nx_host_tx_ring *tx_ring;

	i = 0;

	if (adapter->is_up != NETXEN_ADAPTER_UP_MAGIC)
		return -EIO;

	tx_ring = adapter->tx_ring;
	FUNC0(tx_ring->txq);

	producer = tx_ring->producer;
	consumer = tx_ring->sw_consumer;

	if (nr_desc >= FUNC7(tx_ring)) {
		FUNC4(tx_ring->txq);
		FUNC8();
		if (FUNC7(tx_ring) > nr_desc) {
			if (FUNC7(tx_ring) > TX_STOP_THRESH)
				FUNC5(tx_ring->txq);
		} else {
			FUNC1(tx_ring->txq);
			return -EBUSY;
		}
	}

	do {
		cmd_desc = &cmd_desc_arr[i];

		pbuf = &tx_ring->cmd_buf_arr[producer];
		pbuf->skb = NULL;
		pbuf->frag_count = 0;

		FUNC3(&tx_ring->desc_head[producer],
			&cmd_desc_arr[i], sizeof(struct cmd_desc_type0));

		producer = FUNC2(producer, tx_ring->num_desc);
		i++;

	} while (i != nr_desc);

	tx_ring->producer = producer;

	FUNC6(adapter, tx_ring);

	FUNC1(tx_ring->txq);

	return 0;
}