#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ DCPLB_DATA0 ; 
 scalar_t__ ICPLB_DATA0 ; 
 int MAX_CPLBS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__** dcplb_tbl ; 
 int first_switched_dcplb ; 
 int first_switched_icplb ; 
 TYPE_1__** icplb_tbl ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/ * nr_cplb_flush ; 

void FUNC7(unsigned int cpu)
{
	int i;
	unsigned long flags;

	nr_cplb_flush[cpu]++;

	FUNC6(flags);
	FUNC1();
	for (i = first_switched_icplb; i < MAX_CPLBS; i++) {
		icplb_tbl[cpu][i].data = 0;
		FUNC4(ICPLB_DATA0 + i * 4, 0);
	}
	FUNC3();

	FUNC0();
	for (i = first_switched_dcplb; i < MAX_CPLBS; i++) {
		dcplb_tbl[cpu][i].data = 0;
		FUNC4(DCPLB_DATA0 + i * 4, 0);
	}
	FUNC2();
	FUNC5(flags);

}