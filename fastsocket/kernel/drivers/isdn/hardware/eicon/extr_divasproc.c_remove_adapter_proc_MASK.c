#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proc_dir_entry {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  controller; scalar_t__ proc_adapter_dir; scalar_t__ proc_info; scalar_t__ proc_grp_opt; scalar_t__ proc_d_l1_down; } ;
typedef  TYPE_1__ diva_os_xdi_adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* adapter_dir_name ; 
 char* d_l1_down_proc_name ; 
 char* grp_opt_proc_name ; 
 char* info_proc_name ; 
 struct proc_dir_entry* proc_net_eicon ; 
 int /*<<< orphan*/  FUNC1 (char*,struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ ) ; 

void FUNC3(diva_os_xdi_adapter_t * a)
{
	char tmp[16];

	if (a->proc_adapter_dir) {
		if (a->proc_d_l1_down) {
			FUNC1(d_l1_down_proc_name,
					  (struct proc_dir_entry *) a->proc_adapter_dir);
		}
		if (a->proc_grp_opt) {
			FUNC1(grp_opt_proc_name,
					  (struct proc_dir_entry *) a->proc_adapter_dir);
		}
		if (a->proc_info) {
			FUNC1(info_proc_name,
					  (struct proc_dir_entry *) a->proc_adapter_dir);
		}
		FUNC2(tmp, "%s%d", adapter_dir_name, a->controller);
		FUNC1(tmp, proc_net_eicon);
		FUNC0(("proc entry %s%d removed", adapter_dir_name,
			 a->controller));
	}
}