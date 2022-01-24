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
struct etr_eacr {scalar_t__ e0; scalar_t__ e1; int dp; } ;
typedef  int /*<<< orphan*/  eacr ;

/* Variables and functions */
 struct etr_eacr etr_eacr ; 
 int /*<<< orphan*/  FUNC0 (struct etr_eacr*) ; 
 int /*<<< orphan*/  etr_tolec ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct etr_eacr*,struct etr_eacr*,int) ; 

__attribute__((used)) static void FUNC3(struct etr_eacr eacr)
{
	int dp_changed;

	if (FUNC2(&etr_eacr, &eacr, sizeof(eacr)) == 0)
		/* No change, return. */
		return;
	/*
	 * The disable of an active port of the change of the data port
	 * bit can/will cause a change in the data port.
	 */
	dp_changed = etr_eacr.e0 > eacr.e0 || etr_eacr.e1 > eacr.e1 ||
		(etr_eacr.dp ^ eacr.dp) != 0;
	etr_eacr = eacr;
	FUNC0(&etr_eacr);
	if (dp_changed)
		etr_tolec = FUNC1();
}