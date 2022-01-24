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
struct hstate {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 unsigned int FUNC1 (struct hstate*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int) ; 

__attribute__((used)) static inline pte_t *FUNC4(hugepd_t *hpdp, unsigned long addr,
				    struct hstate *hstate)
{
	unsigned int shift = FUNC1(hstate);
	int psize = FUNC3(shift);
	unsigned long idx = ((addr >> shift) & (FUNC0(psize)-1));
	pte_t *dir = FUNC2(*hpdp);

	return dir + idx;
}