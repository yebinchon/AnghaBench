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
 scalar_t__ AT91_TC ; 
 scalar_t__ AT91_TC_CLK1BASE ; 
 scalar_t__ AT91_TC_SR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	FUNC0(AT91_TC + AT91_TC_CLK1BASE + AT91_TC_SR);
	FUNC1();
	return IRQ_HANDLED;
}