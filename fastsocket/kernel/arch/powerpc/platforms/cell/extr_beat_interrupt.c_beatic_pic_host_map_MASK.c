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
struct irq_desc {int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IRQ_LEVEL ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  beatic_pic ; 
 struct irq_desc* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  handle_fasteoi_irq ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_host *h, unsigned int virq,
			       irq_hw_number_t hw)
{
	struct irq_desc *desc = FUNC1(virq);
	int64_t	err;

	err = FUNC0(virq, hw);
	if (err < 0)
		return -EIO;

	desc->status |= IRQ_LEVEL;
	FUNC2(virq, &beatic_pic, handle_fasteoi_irq);
	return 0;
}