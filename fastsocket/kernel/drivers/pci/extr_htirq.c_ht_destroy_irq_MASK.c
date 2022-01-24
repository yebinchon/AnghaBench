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
struct ht_irq_cfg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct ht_irq_cfg* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ht_irq_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 

void FUNC5(unsigned int irq)
{
	struct ht_irq_cfg *cfg;

	cfg = FUNC1(irq);
	FUNC3(irq, NULL);
	FUNC4(irq, NULL);
	FUNC0(irq);

	FUNC2(cfg);
}