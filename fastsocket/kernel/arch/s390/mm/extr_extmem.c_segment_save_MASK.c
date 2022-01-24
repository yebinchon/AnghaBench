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
struct dcss_segment {int start_addr; int end; int segcnt; TYPE_1__* range; } ;
struct TYPE_2__ {int start; int end; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACHINE_IS_VM ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  dcss_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct dcss_segment* FUNC4 (char*) ; 
 int /*<<< orphan*/ * segtype_string ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int FUNC6 (char*) ; 

void
FUNC7(char *name)
{
	struct dcss_segment *seg;
	int startpfn = 0;
	int endpfn = 0;
	char cmd1[160];
	char cmd2[80];
	int i, response;

	if (!MACHINE_IS_VM)
		return;

	FUNC1(&dcss_lock);
	seg = FUNC4 (name);

	if (seg == NULL) {
		FUNC3("Saving unknown DCSS %s failed\n", name);
		goto out;
	}

	startpfn = seg->start_addr >> PAGE_SHIFT;
	endpfn = (seg->end) >> PAGE_SHIFT;
	FUNC5(cmd1, "DEFSEG %s", name);
	for (i=0; i<seg->segcnt; i++) {
		FUNC5(cmd1+FUNC6(cmd1), " %lX-%lX %s",
			seg->range[i].start >> PAGE_SHIFT,
			seg->range[i].end >> PAGE_SHIFT,
			segtype_string[seg->range[i].start & 0xff]);
	}
	FUNC5(cmd2, "SAVESEG %s", name);
	response = 0;
	FUNC0(cmd1, NULL, 0, &response);
	if (response) {
		FUNC3("Saving a DCSS failed with DEFSEG response code "
		       "%i\n", response);
		goto out;
	}
	FUNC0(cmd2, NULL, 0, &response);
	if (response) {
		FUNC3("Saving a DCSS failed with SAVESEG response code "
		       "%i\n", response);
		goto out;
	}
out:
	FUNC2(&dcss_lock);
}