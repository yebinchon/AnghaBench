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
struct TYPE_3__ {int /*<<< orphan*/  (* v2_eval ) (char*) ;int /*<<< orphan*/  (* v0_eval ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_4__ {TYPE_1__ pv_fortheval; } ;

/* Variables and functions */
 scalar_t__ PROM_V0 ; 
 int /*<<< orphan*/  prom_lock ; 
 scalar_t__ prom_vers ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* romvec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6(char *fstring)
{
	unsigned long flags;
	if(!fstring || fstring[0] == 0)
		return;
	FUNC1(&prom_lock, flags);
	if(prom_vers == PROM_V0)
		(*(romvec->pv_fortheval.v0_eval))(FUNC3(fstring), fstring);
	else
		(*(romvec->pv_fortheval.v2_eval))(fstring);
	FUNC0();
	FUNC2(&prom_lock, flags);
}