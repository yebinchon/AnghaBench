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
struct scc_channel {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/ * tx_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC5(struct scc_channel *scc)
{
	unsigned long flags;
	
	FUNC3(&scc->lock, flags);	
	if (scc->tx_buff != NULL)
	{
		FUNC0(scc->tx_buff);
		scc->tx_buff = NULL;
	}
	
	while (!FUNC2(&scc->tx_queue))
		FUNC0(FUNC1(&scc->tx_queue));

	FUNC4(&scc->lock, flags);
}