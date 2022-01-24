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
struct pktcdvd_device {int /*<<< orphan*/ * dfs_f_info; int /*<<< orphan*/ * dfs_d_root; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  debug_fops ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pktcdvd_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pkt_debugfs_root ; 

__attribute__((used)) static void FUNC3(struct pktcdvd_device *pd)
{
	if (!pkt_debugfs_root)
		return;
	pd->dfs_f_info = NULL;
	pd->dfs_d_root = FUNC1(pd->name, pkt_debugfs_root);
	if (FUNC0(pd->dfs_d_root)) {
		pd->dfs_d_root = NULL;
		return;
	}
	pd->dfs_f_info = FUNC2("info", S_IRUGO,
				pd->dfs_d_root, pd, &debug_fops);
	if (FUNC0(pd->dfs_f_info)) {
		pd->dfs_f_info = NULL;
		return;
	}
}