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
struct uart_port {int line; } ;
struct sbd_port {struct uart_port port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int M_DUART_ISR_ALL ; 
 unsigned int M_DUART_ISR_IN ; 
 unsigned int M_DUART_ISR_RX ; 
 unsigned int M_DUART_ISR_TX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (struct sbd_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbd_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbd_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbd_port*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct sbd_port *sport = dev_id;
	struct uart_port *uport = &sport->port;
	irqreturn_t status = IRQ_NONE;
	unsigned int intstat;
	int count;

	for (count = 16; count; count--) {
		intstat = FUNC2(sport,
				      FUNC1((uport->line) % 2));
		intstat &= FUNC2(sport,
				       FUNC0((uport->line) % 2));
		intstat &= M_DUART_ISR_ALL;
		if (!intstat)
			break;

		if (intstat & M_DUART_ISR_RX)
			FUNC3(sport);
		if (intstat & M_DUART_ISR_IN)
			FUNC4(sport);
		if (intstat & M_DUART_ISR_TX)
			FUNC5(sport);

		status = IRQ_HANDLED;
	}

	return status;
}