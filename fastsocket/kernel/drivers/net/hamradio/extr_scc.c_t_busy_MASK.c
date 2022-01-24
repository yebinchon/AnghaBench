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
struct TYPE_2__ {int /*<<< orphan*/  tx_state; int /*<<< orphan*/  txerrs; } ;
struct scc_channel {int /*<<< orphan*/  dev; TYPE_1__ stat; int /*<<< orphan*/  tx_t; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXS_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scc_channel*) ; 

__attribute__((used)) static void FUNC4(unsigned long channel)
{
	struct scc_channel *scc = (struct scc_channel *) channel;

	FUNC0(&scc->tx_t);
	FUNC1(scc->dev);	/* don't pile on the wabbit! */

	FUNC3(scc);
	scc->stat.txerrs++;
	scc->stat.tx_state = TXS_IDLE;

	FUNC2(scc->dev);	
}