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
struct bnx2x_fastpath {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_Q_FLG_ACTIVE ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_PCSUM_ON_PKT ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_STATS ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_TX_SEC ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_ZERO_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static unsigned long FUNC1(struct bnx2x *bp,
					    struct bnx2x_fastpath *fp,
					    bool zero_stats)
{
	unsigned long flags = 0;

	/* PF driver will always initialize the Queue to an ACTIVE state */
	FUNC0(BNX2X_Q_FLG_ACTIVE, &flags);

	/* tx only connections collect statistics (on the same index as the
	 * parent connection). The statistics are zeroed when the parent
	 * connection is initialized.
	 */

	FUNC0(BNX2X_Q_FLG_STATS, &flags);
	if (zero_stats)
		FUNC0(BNX2X_Q_FLG_ZERO_STATS, &flags);

	FUNC0(BNX2X_Q_FLG_PCSUM_ON_PKT, &flags);

#ifdef BNX2X_STOP_ON_ERROR
	__set_bit(BNX2X_Q_FLG_TX_SEC, &flags);
#endif

	return flags;
}