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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  ac_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__ sharpsl_pm ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	/* Delay the event slightly to debounce */
	/* Must be a smaller delay than the chrg_full_isr below */
	FUNC0(&sharpsl_pm.ac_timer, jiffies + FUNC1(250));

	return IRQ_HANDLED;
}