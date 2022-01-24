#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int available; int entries; scalar_t__ next; scalar_t__ oldest; } ;
struct ipw2100_priv {TYPE_4__ tx_queue; int /*<<< orphan*/  txq_stat; int /*<<< orphan*/  tx_free_stat; int /*<<< orphan*/  tx_free_list; TYPE_3__* tx_buffers; int /*<<< orphan*/  tx_pend_stat; int /*<<< orphan*/  tx_pend_list; int /*<<< orphan*/  fw_pend_stat; int /*<<< orphan*/  fw_pend_list; } ;
struct TYPE_5__ {int /*<<< orphan*/ * txb; } ;
struct TYPE_6__ {TYPE_1__ d_struct; } ;
struct TYPE_7__ {int /*<<< orphan*/  list; TYPE_2__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  IPW_MEM_HOST_SHARED_TX_QUEUE_BD_BASE ; 
 int /*<<< orphan*/  IPW_MEM_HOST_SHARED_TX_QUEUE_BD_SIZE ; 
 int /*<<< orphan*/  IPW_MEM_HOST_SHARED_TX_QUEUE_READ_INDEX ; 
 int /*<<< orphan*/  IPW_MEM_HOST_SHARED_TX_QUEUE_WRITE_INDEX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int TX_PENDED_QUEUE_LENGTH ; 
 int /*<<< orphan*/  FUNC4 (struct ipw2100_priv*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ipw2100_priv *priv)
{
	int i;

	FUNC2("enter\n");

	/*
	 * reinitialize packet info lists
	 */
	FUNC0(&priv->fw_pend_list);
	FUNC1(&priv->fw_pend_stat);

	/*
	 * reinitialize lists
	 */
	FUNC0(&priv->tx_pend_list);
	FUNC0(&priv->tx_free_list);
	FUNC1(&priv->tx_pend_stat);
	FUNC1(&priv->tx_free_stat);

	for (i = 0; i < TX_PENDED_QUEUE_LENGTH; i++) {
		/* We simply drop any SKBs that have been queued for
		 * transmit */
		if (priv->tx_buffers[i].info.d_struct.txb) {
			FUNC5(priv->tx_buffers[i].info.d_struct.
					   txb);
			priv->tx_buffers[i].info.d_struct.txb = NULL;
		}

		FUNC6(&priv->tx_buffers[i].list, &priv->tx_free_list);
	}

	FUNC3(&priv->tx_free_stat, i);

	priv->tx_queue.oldest = 0;
	priv->tx_queue.available = priv->tx_queue.entries;
	priv->tx_queue.next = 0;
	FUNC1(&priv->txq_stat);
	FUNC3(&priv->txq_stat, priv->tx_queue.available);

	FUNC4(priv, &priv->tx_queue,
			    IPW_MEM_HOST_SHARED_TX_QUEUE_BD_BASE,
			    IPW_MEM_HOST_SHARED_TX_QUEUE_BD_SIZE,
			    IPW_MEM_HOST_SHARED_TX_QUEUE_READ_INDEX,
			    IPW_MEM_HOST_SHARED_TX_QUEUE_WRITE_INDEX);

	FUNC2("exit\n");

}