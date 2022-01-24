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
struct parport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  master; } ;
struct butterfly {TYPE_1__ bitbang; int /*<<< orphan*/  pd; struct parport* port; } ;

/* Variables and functions */
 struct butterfly* butterfly ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct parport*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct parport *p)
{
	struct butterfly	*pp;
	int			status;

	/* FIXME this global is ugly ... but, how to quickly get from
	 * the parport to the "struct butterfly" associated with it?
	 * "old school" driver-internal device lists?
	 */
	if (!butterfly || butterfly->port != p)
		return;
	pp = butterfly;
	butterfly = NULL;

	/* stop() unregisters child devices too */
	status = FUNC4(&pp->bitbang);

	/* turn off VCC */
	FUNC3(pp->port, 0);
	FUNC0(10);

	FUNC1(pp->pd);
	FUNC2(pp->pd);

	(void) FUNC5(pp->bitbang.master);
}