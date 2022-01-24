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
struct TYPE_2__ {int /*<<< orphan*/  mask_set; } ;

/* Variables and functions */
 int /*<<< orphan*/ * cpu_pil_to_imask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* sun4m_irq_global ; 

__attribute__((used)) static void FUNC1(unsigned int pil)
{
	FUNC0(cpu_pil_to_imask[pil], &sun4m_irq_global->mask_set);
}