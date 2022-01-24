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
struct uart_port {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int ISR_LOOP_LIMIT ; 
 unsigned int ModemInt ; 
 unsigned int RxInt ; 
 unsigned int RxTimeoutInt ; 
 unsigned int TxInt ; 
 int /*<<< orphan*/  UART_R_ISR ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t FUNC4 (int irq, void* dev_id)
{
	struct uart_port* port = dev_id;
	unsigned int cLoopLimit = ISR_LOOP_LIMIT;
	unsigned int isr = FUNC0 (port, UART_R_ISR);


	do {
		if (isr & (RxInt | RxTimeoutInt))
			FUNC2(port);
		if (isr & ModemInt)
			FUNC1 (port);
		if (isr & TxInt)
			FUNC3 (port);

		if (--cLoopLimit == 0)
			break;

		isr = FUNC0 (port, UART_R_ISR);
	} while (isr & (RxInt | TxInt | RxTimeoutInt));

	return IRQ_HANDLED;
}