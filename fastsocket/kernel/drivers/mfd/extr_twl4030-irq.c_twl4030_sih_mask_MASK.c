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
struct sih_agent {unsigned int irq_base; int imr_change_pending; int /*<<< orphan*/  mask_work; int /*<<< orphan*/  imr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct sih_agent* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sih_agent_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static void FUNC5(unsigned irq)
{
	struct sih_agent *sih = FUNC1(irq);
	unsigned long flags;

	FUNC3(&sih_agent_lock, flags);
	sih->imr |= FUNC0(irq - sih->irq_base);
	sih->imr_change_pending = true;
	FUNC2(wq, &sih->mask_work);
	FUNC4(&sih_agent_lock, flags);
}