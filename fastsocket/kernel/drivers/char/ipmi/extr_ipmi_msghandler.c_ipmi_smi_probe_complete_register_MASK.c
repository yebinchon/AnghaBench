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
struct ipmi_smi_probe_complete {int /*<<< orphan*/  (* probe_complete ) () ;int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ probing_complete ; 
 int /*<<< orphan*/  smi_probe_complete ; 
 int /*<<< orphan*/  smi_probe_complete_mutex ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct ipmi_smi_probe_complete *probe_complete)
{
	FUNC1(&smi_probe_complete_mutex);
	FUNC0(&probe_complete->link, &smi_probe_complete);
	if (probing_complete && probe_complete->probe_complete)
		probe_complete->probe_complete();
	FUNC2(&smi_probe_complete_mutex);
	return 0;
}