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
struct coh901331_port {int /*<<< orphan*/  rtc; int /*<<< orphan*/  clk; scalar_t__ virtbase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ COH901331_IRQ_EVENT ; 
 scalar_t__ COH901331_IRQ_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RTC_AF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct coh901331_port *rtap = data;

	FUNC1(rtap->clk);
	/* Ack IRQ */
	FUNC3(1, rtap->virtbase + COH901331_IRQ_EVENT);
	/*
	 * Disable the interrupt. This is necessary because
	 * the RTC lives on a lower-clocked line and will
	 * not release the IRQ line until after a few (slower)
	 * clock cycles. The interrupt will be re-enabled when
	 * a new alarm is set anyway.
	 */
	FUNC3(0, rtap->virtbase + COH901331_IRQ_MASK);
	FUNC0(rtap->clk);

	/* Set alarm flag */
	FUNC2(rtap->rtc, 1, RTC_AF);

	return IRQ_HANDLED;
}