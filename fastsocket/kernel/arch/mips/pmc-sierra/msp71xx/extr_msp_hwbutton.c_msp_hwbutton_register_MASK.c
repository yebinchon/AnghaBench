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
struct hwbutton_interrupt {scalar_t__ initial_state; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; int /*<<< orphan*/  eirq; int /*<<< orphan*/ * handle_lo; int /*<<< orphan*/ * handle_hi; } ;

/* Variables and functions */
 unsigned long* CIC_EXT_CFG_REG ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ HWBUTTON_HI ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  hwbutton_handler ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hwbutton_interrupt*) ; 

__attribute__((used)) static int FUNC4(struct hwbutton_interrupt *hirq)
{
	unsigned long cic_ext;

	if (hirq->handle_hi == NULL || hirq->handle_lo == NULL)
		return -EINVAL;

	cic_ext = *CIC_EXT_CFG_REG;
	FUNC2(cic_ext, hirq->eirq);
	if (hirq->initial_state == HWBUTTON_HI)
		FUNC1(cic_ext, hirq->eirq);
	else
		FUNC0(cic_ext, hirq->eirq);
	*CIC_EXT_CFG_REG = cic_ext;

	return FUNC3(hirq->irq, hwbutton_handler, IRQF_DISABLED,
			   hirq->name, hirq);
}