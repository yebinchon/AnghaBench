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
typedef  unsigned long ulong ;
typedef  int u32 ;
struct be_rx_stats {unsigned long rx_jiffies; unsigned long rx_pps; scalar_t__ rx_pkts; scalar_t__ rx_pkts_prev; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct be_eq_obj {size_t idx; int eqd; int cur_eqd; TYPE_1__ q; int /*<<< orphan*/  min_eqd; int /*<<< orphan*/  max_eqd; int /*<<< orphan*/  enable_aic; } ;
struct be_adapter {size_t num_rx_qs; int /*<<< orphan*/ * rx_obj; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct be_rx_stats* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct be_adapter *adapter, struct be_eq_obj *eqo)
{
	struct be_rx_stats *stats = FUNC3(&adapter->rx_obj[eqo->idx]);
	ulong now = jiffies;
	ulong delta = now - stats->rx_jiffies;
	u32 eqd;

	if (!eqo->enable_aic) {
		eqd = eqo->eqd;
		goto modify_eqd;
	}

	if (eqo->idx >= adapter->num_rx_qs)
		return;

	stats = FUNC3(&adapter->rx_obj[eqo->idx]);

	/* Wrapped around */
	if (FUNC4(now, stats->rx_jiffies)) {
		stats->rx_jiffies = now;
		return;
	}

	/* Update once a second */
	if (delta < HZ)
		return;

	stats->rx_pps = (unsigned long)(stats->rx_pkts - stats->rx_pkts_prev) / (delta / HZ);
	stats->rx_pkts_prev = stats->rx_pkts;
	stats->rx_jiffies = now;
	eqd = (stats->rx_pps / 110000) << 3;
	eqd = FUNC2(eqd, eqo->max_eqd);
	eqd = FUNC1(eqd, eqo->min_eqd);
	if (eqd < 10)
		eqd = 0;

modify_eqd:
	if (eqd != eqo->cur_eqd) {
		FUNC0(adapter, eqo->q.id, eqd);
		eqo->cur_eqd = eqd;
	}
}