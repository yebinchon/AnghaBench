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
struct tx_queue {scalar_t__ tx_ring_size; scalar_t__ tx_desc_count; int /*<<< orphan*/  index; } ;
struct netdev_queue {int dummy; } ;
struct mv643xx_eth_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC0 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 
 struct netdev_queue* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct mv643xx_eth_private* FUNC6 (struct tx_queue*) ; 

__attribute__((used)) static void FUNC7(struct tx_queue *txq)
{
	struct mv643xx_eth_private *mp = FUNC6(txq);
	struct netdev_queue *nq = FUNC2(mp->dev, txq->index);

	if (FUNC3(nq)) {
		FUNC0(nq, FUNC5());
		if (txq->tx_ring_size - txq->tx_desc_count >= MAX_SKB_FRAGS + 1)
			FUNC4(nq);
		FUNC1(nq);
	}
}