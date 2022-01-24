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
struct stlport {int /*<<< orphan*/  brdnr; int /*<<< orphan*/  pagenr; int /*<<< orphan*/  istate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYI_TXBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SR ; 
 unsigned char SR_TXEMPTY ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char FUNC5 (struct stlport*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct stlport *portp)
{
	unsigned long	flags;
	unsigned char	sr;

	FUNC2("stl_sc26198datastate(portp=%p)\n", portp);

	if (portp == NULL)
		return 0;
	if (FUNC6(ASYI_TXBUSY, &portp->istate))
		return 1;

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	sr = FUNC5(portp, SR);
	FUNC0(portp->brdnr);
	FUNC4(&brd_lock, flags);

	return (sr & SR_TXEMPTY) ? 0 : 1;
}