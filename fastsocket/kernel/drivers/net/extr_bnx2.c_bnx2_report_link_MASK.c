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
struct bnx2 {scalar_t__ duplex; int flow_ctrl; int /*<<< orphan*/  dev; int /*<<< orphan*/  line_speed; scalar_t__ link_up; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int FLOW_CTRL_RX ; 
 int FLOW_CTRL_TX ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(struct bnx2 *bp)
{
	if (bp->link_up) {
		FUNC5(bp->dev);
		FUNC3(bp->dev, "NIC %s Link is Up, %d Mbps %s duplex",
			    FUNC1(bp),
			    bp->line_speed,
			    bp->duplex == DUPLEX_FULL ? "full" : "half");

		if (bp->flow_ctrl) {
			if (bp->flow_ctrl & FLOW_CTRL_RX) {
				FUNC6(", receive ");
				if (bp->flow_ctrl & FLOW_CTRL_TX)
					FUNC6("& transmit ");
			}
			else {
				FUNC6(", transmit ");
			}
			FUNC6("flow control ON");
		}
		FUNC6("\n");
	} else {
		FUNC4(bp->dev);
		FUNC2(bp->dev, "NIC %s Link is Down\n",
			   FUNC1(bp));
	}

	FUNC0(bp);
}