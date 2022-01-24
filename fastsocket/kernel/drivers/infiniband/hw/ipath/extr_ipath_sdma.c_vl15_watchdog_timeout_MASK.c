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
struct ipath_devdata {int /*<<< orphan*/  ipath_sdma_vl15_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*) ; 

__attribute__((used)) static void FUNC4(unsigned long opaque)
{
	struct ipath_devdata *dd = (struct ipath_devdata *)opaque;

	if (FUNC0(&dd->ipath_sdma_vl15_count) != 0) {
		FUNC2("vl15 watchdog timeout - clearing\n");
		FUNC1(dd, 1);
		FUNC3(dd);
	} else {
		FUNC2("vl15 watchdog timeout - "
			  "condition already cleared\n");
	}
}