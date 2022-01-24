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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 int /*<<< orphan*/  fdt ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int const) ; 

__attribute__((used)) static int FUNC5(const void *devp, const char *name,
			       void *buf, const int buflen)
{
	const void *p;
	int len;

	p = FUNC2(fdt, FUNC1(devp), name, &len);
	if (!p)
		return FUNC0(len);
	FUNC3(buf, p, FUNC4(len, buflen));
	return len;
}