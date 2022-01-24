#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long* ste; } ;
typedef  TYPE_1__ pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int PME_SIZE ; 
 scalar_t__ __frv_PT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int xAMPRx_SS ; 

void FUNC3(pmd_t *pmdptr, unsigned long pmd)
{
	unsigned long *__ste_p = pmdptr->ste;
	int loop;

	if (!pmd) {
		FUNC2(__ste_p, 0, PME_SIZE);
	}
	else {
		FUNC0(pmd & (0x3f00 | xAMPRx_SS | 0xe));

		for (loop = PME_SIZE; loop > 0; loop -= 4) {
			*__ste_p++ = pmd;
			pmd += __frv_PT_SIZE;
		}
	}

	FUNC1((unsigned long) pmdptr, (unsigned long) (pmdptr + 1));
}