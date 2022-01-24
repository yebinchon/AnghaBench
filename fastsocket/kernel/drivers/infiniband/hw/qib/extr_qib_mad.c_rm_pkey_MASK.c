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
typedef  scalar_t__ u16 ;
struct qib_pportdata {scalar_t__* pkeys; int /*<<< orphan*/ * pkeyrefs; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct qib_pportdata *ppd, u16 key)
{
	int i;
	int ret;

	for (i = 0; i < FUNC0(ppd->pkeys); i++) {
		if (ppd->pkeys[i] != key)
			continue;
		if (FUNC1(&ppd->pkeyrefs[i])) {
			ppd->pkeys[i] = 0;
			ret = 1;
			goto bail;
		}
		break;
	}

	ret = 0;

bail:
	return ret;
}