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
struct TYPE_2__ {int /*<<< orphan*/  head; int /*<<< orphan*/  tail; } ;
struct stlport {TYPE_1__ tx; int /*<<< orphan*/  brdnr; int /*<<< orphan*/  crenable; int /*<<< orphan*/  pagenr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CR_TXRESET ; 
 int /*<<< orphan*/  SCCR ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct stlport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct stlport *portp)
{
	unsigned long	flags;

	FUNC2("stl_sc26198flush(portp=%p)\n", portp);

	if (portp == NULL)
		return;

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	FUNC5(portp, SCCR, CR_TXRESET);
	FUNC5(portp, SCCR, portp->crenable);
	FUNC0(portp->brdnr);
	portp->tx.tail = portp->tx.head;
	FUNC4(&brd_lock, flags);
}