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
typedef  int /*<<< orphan*/  u32 ;
struct irq_desc {scalar_t__ handle_irq; } ;

/* Variables and functions */
 scalar_t__ handle_edge_irq ; 
 struct irq_desc* irq_desc ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned int irq)
{
	struct irq_desc *desc = irq_desc + irq;
	u32 gpionr = FUNC0(irq);

	if (desc->handle_irq == handle_edge_irq)
		FUNC1(gpionr, 0);

	FUNC2(gpionr, 0);
}