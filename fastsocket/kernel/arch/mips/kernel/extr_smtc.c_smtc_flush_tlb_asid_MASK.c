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
struct TYPE_2__ {int tlbsize; } ;

/* Variables and functions */
 unsigned long ASID_MASK ; 
 scalar_t__ CKSEG0 ; 
 int PAGE_SHIFT ; 
 int PARKED_INDEX ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(unsigned long asid)
{
	int entry;
	unsigned long ehi;

	entry = FUNC3();

	/* Traverse all non-wired entries */
	while (entry < current_cpu_data.tlbsize) {
		FUNC10(entry);
		FUNC0();
		FUNC4();
		FUNC0();
		ehi = FUNC2();
		if ((ehi & ASID_MASK) == asid) {
		    /*
		     * Invalidate only entries with specified ASID,
		     * makiing sure all entries differ.
		     */
		    FUNC7(CKSEG0 + (entry << (PAGE_SHIFT + 1)));
		    FUNC8(0);
		    FUNC9(0);
		    FUNC1();
		    FUNC5();
		}
		entry++;
	}
	FUNC10(PARKED_INDEX);
	FUNC6();
}