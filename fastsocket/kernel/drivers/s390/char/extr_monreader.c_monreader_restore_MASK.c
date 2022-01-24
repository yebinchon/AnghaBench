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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEGMENT_SHARED ; 
 int /*<<< orphan*/  mon_dcss_end ; 
 int /*<<< orphan*/  mon_dcss_name ; 
 int /*<<< orphan*/  mon_dcss_start ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	int rc;

	FUNC3(mon_dcss_name);
	rc = FUNC2(mon_dcss_name, SEGMENT_SHARED,
			  &mon_dcss_start, &mon_dcss_end);
	if (rc < 0) {
		FUNC4(rc, mon_dcss_name);
		FUNC1("fatal monreader resume error: no monitor dcss\n");
	}
	return FUNC0(dev);
}