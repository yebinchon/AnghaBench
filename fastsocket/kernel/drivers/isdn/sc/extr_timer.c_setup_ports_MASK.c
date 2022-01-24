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
struct TYPE_2__ {int rambase; int interrupt; int /*<<< orphan*/ * ioport; } ;

/* Variables and functions */
 size_t EXP_BASE ; 
 size_t IRQ_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__** sc_adapter ; 

__attribute__((used)) static void FUNC1(int card)
{

	FUNC0((sc_adapter[card]->rambase >> 12), sc_adapter[card]->ioport[EXP_BASE]);

	/* And the IRQ */
	FUNC0((sc_adapter[card]->interrupt | 0x80),
		sc_adapter[card]->ioport[IRQ_SELECT]);
}