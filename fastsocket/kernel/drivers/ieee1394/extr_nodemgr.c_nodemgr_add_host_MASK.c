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
struct hpsb_host {int /*<<< orphan*/  id; } ;
struct host_info {int /*<<< orphan*/  thread; struct hpsb_host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct host_info* FUNC2 (int /*<<< orphan*/ *,struct hpsb_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hpsb_host*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nodemgr_highlevel ; 
 int /*<<< orphan*/  nodemgr_host_thread ; 

__attribute__((used)) static void FUNC5(struct hpsb_host *host)
{
	struct host_info *hi;

	hi = FUNC2(&nodemgr_highlevel, host, sizeof(*hi));
	if (!hi) {
		FUNC0("NodeMgr: out of memory in add host");
		return;
	}
	hi->host = host;
	hi->thread = FUNC4(nodemgr_host_thread, host, "knodemgrd_%d",
				 host->id);
	if (FUNC1(hi->thread)) {
		FUNC0("NodeMgr: cannot start thread for host %d", host->id);
		FUNC3(&nodemgr_highlevel, host);
	}
}