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
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {unsigned long bitcnt; int /*<<< orphan*/  count; int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int _PAGE_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ mm_tracking_struct ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

void FUNC5(void *val)
{
	pte_t *ptep = (pte_t *)val;
	unsigned long pfn;

	if (!FUNC2(*ptep))
		return;

	if (!(FUNC3(*ptep) & _PAGE_DIRTY))
		return;

	pfn = FUNC1(*ptep);

	if (pfn >= mm_tracking_struct.bitcnt)
		return;

	if (!FUNC4(pfn, mm_tracking_struct.vector))
		FUNC0(&mm_tracking_struct.count);
}