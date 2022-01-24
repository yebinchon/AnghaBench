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
struct irq_host {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  mpc8xx_pic ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct irq_host *h, unsigned int virq,
			  irq_hw_number_t hw)
{
	FUNC0("mpc8xx_pic_host_map(%d, 0x%lx)\n", virq, hw);

	/* Set default irq handle */
	FUNC1(virq, &mpc8xx_pic, handle_level_irq);
	return 0;
}