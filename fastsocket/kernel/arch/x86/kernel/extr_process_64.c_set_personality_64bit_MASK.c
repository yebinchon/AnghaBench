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
struct TYPE_4__ {int /*<<< orphan*/  personality; TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMF_COMPAT ; 
 int /*<<< orphan*/  READ_IMPLIES_EXEC ; 
 int /*<<< orphan*/  TIF_IA32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 

void FUNC2(void)
{
	/* inherit personality from parent */

	/* Make sure to be in 64bit mode */
	FUNC1(TIF_IA32);

	/* Ensure the corresponding mm is not marked. */
	FUNC0(MMF_COMPAT, &current->mm->flags);

	/* TBD: overwrites user setup. Should have two bits.
	   But 64bit processes have always behaved this way,
	   so it's not too bad. The main problem is just that
	   32bit childs are affected again. */
	current->personality &= ~READ_IMPLIES_EXEC;
}