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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct uart_txx9_port {TYPE_1__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  PASS_LIMIT ; 
 int /*<<< orphan*/  TXX9_SIDICR ; 
 unsigned int TXX9_SIDICR_TIE ; 
 int /*<<< orphan*/  TXX9_SIDISR ; 
 unsigned int TXX9_SIDISR_RDIS ; 
 unsigned int TXX9_SIDISR_TDIS ; 
 unsigned int TXX9_SIDISR_TOUT ; 
 int /*<<< orphan*/  FUNC0 (struct uart_txx9_port*,unsigned int*) ; 
 unsigned int FUNC1 (struct uart_txx9_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_txx9_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_txx9_port*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	int pass_counter = 0;
	struct uart_txx9_port *up = dev_id;
	unsigned int status;

	while (1) {
		FUNC3(&up->port.lock);
		status = FUNC1(up, TXX9_SIDISR);
		if (!(FUNC1(up, TXX9_SIDICR) & TXX9_SIDICR_TIE))
			status &= ~TXX9_SIDISR_TDIS;
		if (!(status & (TXX9_SIDISR_TDIS | TXX9_SIDISR_RDIS |
				TXX9_SIDISR_TOUT))) {
			FUNC4(&up->port.lock);
			break;
		}

		if (status & TXX9_SIDISR_RDIS)
			FUNC0(up, &status);
		if (status & TXX9_SIDISR_TDIS)
			FUNC5(up);
		/* Clear TX/RX Int. Status */
		FUNC2(up, TXX9_SIDISR,
			 TXX9_SIDISR_TDIS | TXX9_SIDISR_RDIS |
			 TXX9_SIDISR_TOUT);
		FUNC4(&up->port.lock);

		if (pass_counter++ > PASS_LIMIT)
			break;
	}

	return pass_counter ? IRQ_HANDLED : IRQ_NONE;
}