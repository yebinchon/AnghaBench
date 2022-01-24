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
struct hpsb_host {int dummy; } ;
struct hpsb_highlevel {int /*<<< orphan*/  host_info_lock; } ;
struct hl_host_info {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 struct hl_host_info* FUNC0 (struct hpsb_highlevel*,struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_host_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct hpsb_highlevel *hl, struct hpsb_host *host)
{
	struct hl_host_info *hi;

	hi = FUNC0(hl, host);
	if (hi) {
		unsigned long flags;
		FUNC3(&hl->host_info_lock, flags);
		FUNC2(&hi->list);
		FUNC4(&hl->host_info_lock, flags);
		FUNC1(hi);
	}
	return;
}