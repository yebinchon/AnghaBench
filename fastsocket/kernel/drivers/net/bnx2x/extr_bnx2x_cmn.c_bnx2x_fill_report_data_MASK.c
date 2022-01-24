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
typedef  int /*<<< orphan*/  u16 ;
struct bnx2x_link_report_data {int /*<<< orphan*/  link_report_flags; int /*<<< orphan*/  line_speed; } ;
struct TYPE_2__ {scalar_t__ duplex; int flow_ctrl; int /*<<< orphan*/  link_up; } ;
struct bnx2x {int flags; TYPE_1__ link_vars; } ;

/* Variables and functions */
 int BNX2X_FLOW_CTRL_RX ; 
 int BNX2X_FLOW_CTRL_TX ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_FD ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_LINK_DOWN ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_RX_FC_ON ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_TX_FC_ON ; 
 scalar_t__ DUPLEX_FULL ; 
 int MF_FUNC_DIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x_link_report_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct bnx2x *bp,
				   struct bnx2x_link_report_data *data)
{
	u16 line_speed = FUNC1(bp);

	FUNC2(data, 0, sizeof(*data));

	/* Fill the report data: effective line speed */
	data->line_speed = line_speed;

	/* Link is down */
	if (!bp->link_vars.link_up || (bp->flags & MF_FUNC_DIS))
		FUNC0(BNX2X_LINK_REPORT_LINK_DOWN,
			  &data->link_report_flags);

	/* Full DUPLEX */
	if (bp->link_vars.duplex == DUPLEX_FULL)
		FUNC0(BNX2X_LINK_REPORT_FD, &data->link_report_flags);

	/* Rx Flow Control is ON */
	if (bp->link_vars.flow_ctrl & BNX2X_FLOW_CTRL_RX)
		FUNC0(BNX2X_LINK_REPORT_RX_FC_ON, &data->link_report_flags);

	/* Tx Flow Control is ON */
	if (bp->link_vars.flow_ctrl & BNX2X_FLOW_CTRL_TX)
		FUNC0(BNX2X_LINK_REPORT_TX_FC_ON, &data->link_report_flags);
}