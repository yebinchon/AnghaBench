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
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pmd_update ; 
 int /*<<< orphan*/  pmd_update_pinned ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(pmd_t *ptr, pmd_t val)
{
	FUNC0(pmd_update, 1);

	/* If page is not pinned, we can just update the entry
	   directly */
	if (!FUNC1(ptr)) {
		*ptr = val;
		return;
	}

	FUNC0(pmd_update_pinned, 1);

	FUNC2(ptr, val);
}