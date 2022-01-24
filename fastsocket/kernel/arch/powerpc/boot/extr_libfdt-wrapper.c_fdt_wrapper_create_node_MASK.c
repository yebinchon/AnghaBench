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
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  fdt ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 void* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void *FUNC5(const void *devp, const char *name)
{
	int offset;

	offset = FUNC2(fdt, FUNC0(devp), name);
	if (offset == -FDT_ERR_NOSPACE) {
		FUNC1(FUNC4(name) + 16);
		offset = FUNC2(fdt, FUNC0(devp), name);
	}

	return FUNC3(offset);
}