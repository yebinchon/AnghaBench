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
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NOREQUEST ; 
 unsigned int NR_IRQS ; 
 TYPE_1__* FUNC0 (unsigned int) ; 

void FUNC1(void)
{
	unsigned int i;

	for (i = 0; i < NR_IRQS; i++)
		FUNC0(i)->status |= IRQ_NOREQUEST;
}