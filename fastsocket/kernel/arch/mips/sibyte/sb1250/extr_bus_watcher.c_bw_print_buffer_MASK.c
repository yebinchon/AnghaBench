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
struct bw_stats_struct {int status; int status_printed; int /*<<< orphan*/  bus_error; int /*<<< orphan*/  mem_bad_d; int /*<<< orphan*/  mem_cor_d; int /*<<< orphan*/  l2_bad_t; int /*<<< orphan*/  l2_cor_t; int /*<<< orphan*/  l2_bad_d; int /*<<< orphan*/  l2_cor_d; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int M_SCD_BERR_MULTERRS ; 
 int FUNC3 (char*,char*,...) ; 

__attribute__((used)) static int FUNC4(char *page, struct bw_stats_struct *stats)
{
	int len;

	len = FUNC3(page, "SiByte Bus Watcher statistics\n");
	len += FUNC3(page+len, "-----------------------------\n");
	len += FUNC3(page+len, "L2-d-cor %8ld\nL2-d-bad %8ld\n",
		       stats->l2_cor_d, stats->l2_bad_d);
	len += FUNC3(page+len, "L2-t-cor %8ld\nL2-t-bad %8ld\n",
		       stats->l2_cor_t, stats->l2_bad_t);
	len += FUNC3(page+len, "MC-d-cor %8ld\nMC-d-bad %8ld\n",
		       stats->mem_cor_d, stats->mem_bad_d);
	len += FUNC3(page+len, "IO-err   %8ld\n", stats->bus_error);
	len += FUNC3(page+len, "\nLast recorded signature:\n");
	len += FUNC3(page+len, "Request %02x from %d, answered by %d with Dcode %d\n",
		       (unsigned int)(FUNC2(stats->status) & 0x3f),
		       (int)(FUNC2(stats->status) >> 6),
		       (int)FUNC1(stats->status),
		       (int)FUNC0(stats->status));
	/* XXXKW indicate multiple errors between printings, or stats
           collection (or both)? */
	if (stats->status & M_SCD_BERR_MULTERRS)
		len += FUNC3(page+len, "Multiple errors observed since last check.\n");
	if (stats->status_printed) {
		len += FUNC3(page+len, "(no change since last printing)\n");
	} else {
		stats->status_printed = 1;
	}

	return len;
}