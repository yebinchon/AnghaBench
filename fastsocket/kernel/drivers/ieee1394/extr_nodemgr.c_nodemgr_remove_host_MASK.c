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
struct hpsb_host {int /*<<< orphan*/  device; } ;
struct host_info {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 struct host_info* FUNC0 (int /*<<< orphan*/ *,struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nodemgr_highlevel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct hpsb_host *host)
{
	struct host_info *hi = FUNC0(&nodemgr_highlevel, host);

	if (hi) {
		FUNC1(hi->thread);
		FUNC2(&host->device);
	}
}