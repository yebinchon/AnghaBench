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
typedef  scalar_t__ u32 ;
struct lguest {TYPE_1__* pgdirs; } ;
struct TYPE_2__ {scalar_t__ pgdir; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ SWITCHER_PGD_INDEX ; 
 int FUNC1 (struct lguest*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct lguest *lg, unsigned long gpgdir, u32 idx)
{
	int pgdir;

	if (idx >= SWITCHER_PGD_INDEX)
		return;

	/* If they're talking about a page table we have a shadow for... */
	pgdir = FUNC1(lg, gpgdir);
	if (pgdir < FUNC0(lg->pgdirs))
		/* ... throw it away. */
		FUNC2(lg->pgdirs[pgdir].pgdir + idx);
}