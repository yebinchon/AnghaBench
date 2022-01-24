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
struct tid_info {int /*<<< orphan*/  stid_lock; int /*<<< orphan*/  stids_in_use; TYPE_1__* stid_tab; int /*<<< orphan*/  stid_bmap; scalar_t__ stid_base; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int PF_INET ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct tid_info *t, unsigned int stid, int family)
{
	stid -= t->stid_base;
	FUNC2(&t->stid_lock);
	if (family == PF_INET)
		FUNC0(stid, t->stid_bmap);
	else
		FUNC1(t->stid_bmap, stid, 2);
	t->stid_tab[stid].data = NULL;
	t->stids_in_use--;
	FUNC3(&t->stid_lock);
}