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
struct sge {int /*<<< orphan*/ * espibug_skb; scalar_t__ tx_sched; int /*<<< orphan*/  tx_reclaim_timer; int /*<<< orphan*/  espibug_timer; TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ A_SG_CONTROL ; 
 int MAX_NPORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sge*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(struct sge *sge)
{
	int i;
	FUNC5(0, sge->adapter->regs + A_SG_CONTROL);
	FUNC3(sge->adapter->regs + A_SG_CONTROL); /* flush */

	if (FUNC1(sge->adapter))
		FUNC0(&sge->espibug_timer);

	FUNC0(&sge->tx_reclaim_timer);
	if (sge->tx_sched)
		FUNC4(sge);

	for (i = 0; i < MAX_NPORTS; i++)
		FUNC2(sge->espibug_skb[i]);
}