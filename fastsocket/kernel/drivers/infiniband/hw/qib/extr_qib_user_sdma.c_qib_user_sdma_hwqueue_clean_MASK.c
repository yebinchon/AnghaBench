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
struct qib_pportdata {int /*<<< orphan*/  sdma_lock; } ;

/* Variables and functions */
 int FUNC0 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct qib_pportdata *ppd)
{
	int ret;
	unsigned long flags;

	FUNC1(&ppd->sdma_lock, flags);
	ret = FUNC0(ppd);
	FUNC2(&ppd->sdma_lock, flags);

	return ret;
}