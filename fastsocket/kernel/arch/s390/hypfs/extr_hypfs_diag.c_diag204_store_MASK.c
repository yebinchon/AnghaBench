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
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  diag204_info_type ; 

__attribute__((used)) static void *FUNC4(void)
{
	void *buf;
	int pages, rc;

	buf = FUNC3(diag204_info_type, &pages);
	if (FUNC1(buf))
		goto out;
	rc = FUNC2(buf, pages);
	if (rc)
		return FUNC0(rc);
out:
	return buf;
}