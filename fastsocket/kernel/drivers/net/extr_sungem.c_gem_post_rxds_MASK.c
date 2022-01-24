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
struct gem_rxd {int /*<<< orphan*/  status_word; } ;
struct gem {int rx_new; scalar_t__ regs; TYPE_1__* init_block; } ;
struct TYPE_2__ {struct gem_rxd* rxd; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*) ; 
 scalar_t__ RXDMA_KICK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static __inline__ void FUNC6(struct gem *gp, int limit)
{
	int cluster_start, curr, count, kick;

	cluster_start = curr = (gp->rx_new & ~(4 - 1));
	count = 0;
	kick = -1;
	FUNC4();
	while (curr != limit) {
		curr = FUNC0(curr);
		if (++count == 4) {
			struct gem_rxd *rxd =
				&gp->init_block->rxd[cluster_start];
			for (;;) {
				rxd->status_word = FUNC2(FUNC1(gp));
				rxd++;
				cluster_start = FUNC0(cluster_start);
				if (cluster_start == curr)
					break;
			}
			kick = curr;
			count = 0;
		}
	}
	if (kick >= 0) {
		FUNC3();
		FUNC5(kick, gp->regs + RXDMA_KICK);
	}
}