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
 int FDT_ERR_NOSPACE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  fdt ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,void const*,int const) ; 

__attribute__((used)) static int FUNC4(const void *devp, const char *name,
			       const void *buf, const int len)
{
	int rc;

	rc = FUNC3(fdt, FUNC1(devp), name, buf, len);
	if (rc == -FDT_ERR_NOSPACE) {
		FUNC2(len + 16);
		rc = FUNC3(fdt, FUNC1(devp), name, buf, len);
	}

	return FUNC0(rc);
}