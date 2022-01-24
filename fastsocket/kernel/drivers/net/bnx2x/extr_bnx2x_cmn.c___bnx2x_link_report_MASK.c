#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bnx2x_link_report_data {int /*<<< orphan*/  line_speed; scalar_t__ link_report_flags; } ;
struct TYPE_3__ {scalar_t__ link_report_flags; } ;
struct bnx2x {int /*<<< orphan*/  dev; TYPE_1__ last_reported_link; int /*<<< orphan*/  link_cnt; } ;
typedef  int /*<<< orphan*/  cur_data ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_LINK_REPORT_FD ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_LINK_DOWN ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_RX_FC_ON ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_TX_FC_ON ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_link_report_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x_link_report_data*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct bnx2x_link_report_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__*) ; 

void FUNC12(struct bnx2x *bp)
{
	struct bnx2x_link_report_data cur_data;

	/* reread mf_cfg */
	if (FUNC1(bp) && !FUNC0(bp))
		FUNC3(bp);

	/* Read the current link report info */
	FUNC2(bp, &cur_data);

	/* Don't report link down or exactly the same link status twice */
	if (!FUNC4(&cur_data, &bp->last_reported_link, sizeof(cur_data)) ||
	    (FUNC11(BNX2X_LINK_REPORT_LINK_DOWN,
		      &bp->last_reported_link.link_report_flags) &&
	     FUNC11(BNX2X_LINK_REPORT_LINK_DOWN,
		      &cur_data.link_report_flags)))
		return;

	bp->link_cnt++;

	/* We are going to report a new link parameters now -
	 * remember the current data for the next time.
	 */
	FUNC5(&bp->last_reported_link, &cur_data, sizeof(cur_data));

	if (FUNC11(BNX2X_LINK_REPORT_LINK_DOWN,
		     &cur_data.link_report_flags)) {
		FUNC8(bp->dev);
		FUNC6(bp->dev, "NIC Link is Down\n");
		return;
	} else {
		const char *duplex;
		const char *flow;

		FUNC9(bp->dev);

		if (FUNC10(BNX2X_LINK_REPORT_FD,
				       &cur_data.link_report_flags))
			duplex = "full";
		else
			duplex = "half";

		/* Handle the FC at the end so that only these flags would be
		 * possibly set. This way we may easily check if there is no FC
		 * enabled.
		 */
		if (cur_data.link_report_flags) {
			if (FUNC11(BNX2X_LINK_REPORT_RX_FC_ON,
				     &cur_data.link_report_flags)) {
				if (FUNC11(BNX2X_LINK_REPORT_TX_FC_ON,
				     &cur_data.link_report_flags))
					flow = "ON - receive & transmit";
				else
					flow = "ON - receive";
			} else {
				flow = "ON - transmit";
			}
		} else {
			flow = "none";
		}
		FUNC7(bp->dev, "NIC Link is Up, %d Mbps %s duplex, Flow control: %s\n",
			    cur_data.line_speed, duplex, flow);
	}
}