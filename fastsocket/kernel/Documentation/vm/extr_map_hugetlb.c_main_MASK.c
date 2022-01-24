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
 int /*<<< orphan*/  ADDR ; 
 int /*<<< orphan*/  FLAGS ; 
 int /*<<< orphan*/  LENGTH ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  PROTECTION ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

int FUNC8(void)
{
	void *addr;

	addr = FUNC2(ADDR, LENGTH, PROTECTION, FLAGS, 0, 0);
	if (addr == MAP_FAILED) {
		FUNC4("mmap");
		FUNC1(1);
	}

	FUNC5("Returned address is %p\n", addr);
	FUNC0(addr);
	FUNC7(addr);
	FUNC6(addr);

	FUNC3(addr, LENGTH);

	return 0;
}