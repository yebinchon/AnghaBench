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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	irqreturn_t result;
	unsigned long flags;

	FUNC1(flags);
	result = FUNC2(irq, dev_id);
	FUNC0(flags);
	return result;
}