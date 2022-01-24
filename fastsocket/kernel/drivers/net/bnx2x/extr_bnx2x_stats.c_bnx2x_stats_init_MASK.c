#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nig_stats {int dummy; } ;
struct host_func_stats {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  egress_mac_pkt1_lo; int /*<<< orphan*/  egress_mac_pkt0_lo; void* brb_truncate; void* brb_discard; } ;
struct TYPE_6__ {TYPE_3__ old_nig_stats; void* port_stx; scalar_t__ pmf; } ;
struct bnx2x {void* func_stx; scalar_t__ stats_init; TYPE_1__ port; scalar_t__ stats_counter; scalar_t__ executer_idx; scalar_t__ stats_pending; } ;
struct TYPE_9__ {int /*<<< orphan*/  fw_mb_param; } ;
struct TYPE_7__ {int /*<<< orphan*/  port_stx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_STATS ; 
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,void*,void*) ; 
 scalar_t__ NIG_REG_STAT0_BRB_DISCARD ; 
 scalar_t__ NIG_REG_STAT0_BRB_TRUNCATE ; 
 scalar_t__ NIG_REG_STAT0_EGRESS_MAC_PKT0 ; 
 scalar_t__ NIG_REG_STAT0_EGRESS_MAC_PKT1 ; 
 void* FUNC5 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATS_EVENT_PMF ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*) ; 
 TYPE_3__* FUNC12 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 TYPE_4__* func_mb ; 
 int /*<<< orphan*/  func_stats ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* port_mb ; 

void FUNC16(struct bnx2x *bp)
{
	int /*abs*/port = FUNC2(bp);
	int mb_idx = FUNC0(bp);

	bp->stats_pending = 0;
	bp->executer_idx = 0;
	bp->stats_counter = 0;

	/* port and func stats for management */
	if (!FUNC1(bp)) {
		bp->port.port_stx = FUNC7(bp, port_mb[port].port_stx);
		bp->func_stx = FUNC7(bp, func_mb[mb_idx].fw_mb_param);

	} else {
		bp->port.port_stx = 0;
		bp->func_stx = 0;
	}
	FUNC4(BNX2X_MSG_STATS, "port_stx 0x%x  func_stx 0x%x\n",
	   bp->port.port_stx, bp->func_stx);

	/* pmf should retrieve port statistics from SP on a non-init*/
	if (!bp->stats_init && bp->port.pmf && bp->port.port_stx)
		FUNC14(bp, STATS_EVENT_PMF);

	port = FUNC2(bp);
	/* port stats */
	FUNC15(&(bp->port.old_nig_stats), 0, sizeof(struct nig_stats));
	bp->port.old_nig_stats.brb_discard =
			FUNC5(bp, NIG_REG_STAT0_BRB_DISCARD + port*0x38);
	bp->port.old_nig_stats.brb_truncate =
			FUNC5(bp, NIG_REG_STAT0_BRB_TRUNCATE + port*0x38);
	if (!FUNC3(bp)) {
		FUNC6(bp, NIG_REG_STAT0_EGRESS_MAC_PKT0 + port*0x50,
			    &(bp->port.old_nig_stats.egress_mac_pkt0_lo), 2);
		FUNC6(bp, NIG_REG_STAT0_EGRESS_MAC_PKT1 + port*0x50,
			    &(bp->port.old_nig_stats.egress_mac_pkt1_lo), 2);
	}

	/* Prepare statistics ramrod data */
	FUNC11(bp);

	/* Clean SP from previous statistics */
	if (bp->stats_init) {
		if (bp->func_stx) {
			FUNC15(FUNC12(bp, func_stats), 0,
			       sizeof(struct host_func_stats));
			FUNC8(bp);
			FUNC9(bp);
			FUNC13(bp);
		}
	}

	FUNC10(bp);
}