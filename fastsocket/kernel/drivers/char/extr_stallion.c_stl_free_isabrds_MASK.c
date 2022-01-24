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
struct stlbrd {int state; scalar_t__ iosize1; scalar_t__ iosize2; int /*<<< orphan*/  ioaddr2; int /*<<< orphan*/  ioaddr1; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int STL_PROBED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct stlbrd*) ; 
 int /*<<< orphan*/  FUNC1 (struct stlbrd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct stlbrd** stl_brds ; 
 int /*<<< orphan*/  FUNC3 (struct stlbrd*) ; 
 unsigned int stl_nrbrds ; 

__attribute__((used)) static void FUNC4(void)
{
	struct stlbrd *brdp;
	unsigned int i;

	for (i = 0; i < stl_nrbrds; i++) {
		if ((brdp = stl_brds[i]) == NULL || (brdp->state & STL_PROBED))
			continue;

		FUNC0(brdp->irq, brdp);

		FUNC3(brdp);

		FUNC2(brdp->ioaddr1, brdp->iosize1);
		if (brdp->iosize2 > 0)
			FUNC2(brdp->ioaddr2, brdp->iosize2);

		FUNC1(brdp);
		stl_brds[i] = NULL;
	}
}