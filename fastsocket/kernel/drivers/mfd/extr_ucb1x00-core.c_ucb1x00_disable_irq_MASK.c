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
struct ucb1x00 {int irq_ris_enbl; int irq_fal_enbl; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int UCB_FALLING ; 
 int /*<<< orphan*/  UCB_IE_FAL ; 
 int /*<<< orphan*/  UCB_IE_RIS ; 
 int UCB_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct ucb1x00*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucb1x00*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucb1x00*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct ucb1x00 *ucb, unsigned int idx, int edges)
{
	unsigned long flags;

	if (idx < 16) {
		FUNC0(&ucb->lock, flags);

		FUNC3(ucb);
		if (edges & UCB_RISING) {
			ucb->irq_ris_enbl &= ~(1 << idx);
			FUNC4(ucb, UCB_IE_RIS, ucb->irq_ris_enbl);
		}
		if (edges & UCB_FALLING) {
			ucb->irq_fal_enbl &= ~(1 << idx);
			FUNC4(ucb, UCB_IE_FAL, ucb->irq_fal_enbl);
		}
		FUNC2(ucb);
		FUNC1(&ucb->lock, flags);
	}
}