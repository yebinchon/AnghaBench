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
struct irq_host {struct ipic* host_data; } ;
struct ipic {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  ipic_level_irq_chip ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct ipic*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_host *h, unsigned int virq,
			 irq_hw_number_t hw)
{
	struct ipic *ipic = h->host_data;

	FUNC1(virq, ipic);
	FUNC0(virq, &ipic_level_irq_chip, handle_level_irq);

	/* Set default irq type */
	FUNC2(virq, IRQ_TYPE_NONE);

	return 0;
}