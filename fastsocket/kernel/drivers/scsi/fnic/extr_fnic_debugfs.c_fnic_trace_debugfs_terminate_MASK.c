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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fnic_trace_debugfs_file ; 
 int /*<<< orphan*/ * fnic_trace_debugfs_root ; 
 int /*<<< orphan*/ * fnic_trace_enable ; 

void FUNC1(void)
{
	if (fnic_trace_debugfs_file) {
		FUNC0(fnic_trace_debugfs_file);
		fnic_trace_debugfs_file = NULL;
	}
	if (fnic_trace_enable) {
		FUNC0(fnic_trace_enable);
		fnic_trace_enable = NULL;
	}
	if (fnic_trace_debugfs_root) {
		FUNC0(fnic_trace_debugfs_root);
		fnic_trace_debugfs_root = NULL;
	}
}