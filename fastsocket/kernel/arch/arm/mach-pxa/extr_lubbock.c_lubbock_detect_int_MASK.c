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
 scalar_t__ MMC_POLL_RATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  mmc_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	/* IRQ is level triggered; disable, and poll for removal */
	FUNC0(irq);
	FUNC2(&mmc_timer, jiffies + MMC_POLL_RATE);

	return FUNC1(irq, data);
}