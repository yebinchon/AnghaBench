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
struct TYPE_3__ {int dbcr0; scalar_t__ dabr; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int DBSR_DAC1R ; 
 int DBSR_DAC1W ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	FUNC0();

	if (current->thread.dabr) {
		current->thread.dabr = 0;
		FUNC1(0);

#if defined(CONFIG_BOOKE)
		current->thread.dbcr0 &= ~(DBSR_DAC1R | DBSR_DAC1W);
#endif
	}
}