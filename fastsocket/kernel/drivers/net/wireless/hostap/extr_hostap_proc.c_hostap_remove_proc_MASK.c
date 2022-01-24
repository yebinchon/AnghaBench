#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* proc; TYPE_1__* ddev; } ;
typedef  TYPE_2__ local_info_t ;
struct TYPE_9__ {char* name; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_3__* hostap_proc ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void FUNC2(local_info_t *local)
{
#if 0 /* Not in RHEL */
	remove_proc_subtree(local->ddev->name, hostap_proc);
#else
	if (local->proc != NULL) {
#ifndef PRISM2_NO_STATION_MODES
		FUNC0("scan_results", local->proc);
#endif /* PRISM2_NO_STATION_MODES */
#ifdef PRISM2_IO_DEBUG
		remove_proc_entry("io_debug", local->proc);
#endif /* PRISM2_IO_DEBUG */
		FUNC0("pda", local->proc);
		FUNC0("aux_dump", local->proc);
		FUNC0("wds", local->proc);
		FUNC0("stats", local->proc);
		FUNC0("bss_list", local->proc);
		FUNC0("crypt", local->proc);
#ifndef PRISM2_NO_PROCFS_DEBUG
		FUNC0("debug", local->proc);
#endif /* PRISM2_NO_PROCFS_DEBUG */
		if (hostap_proc != NULL)
			FUNC0(local->proc->name, hostap_proc);
	}
#endif /* Not in RHEL */
}