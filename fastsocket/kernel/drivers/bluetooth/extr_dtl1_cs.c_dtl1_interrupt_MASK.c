#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_8__ {unsigned char ri_latch; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_state; TYPE_2__* p_dev; int /*<<< orphan*/  hdev; } ;
typedef  TYPE_3__ dtl1_info_t ;
struct TYPE_6__ {unsigned int BasePort1; } ;
struct TYPE_7__ {TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ UART_IIR ; 
 int UART_IIR_ID ; 
#define  UART_IIR_RDI 130 
#define  UART_IIR_RLSI 129 
#define  UART_IIR_THRI 128 
 scalar_t__ UART_LSR ; 
 int UART_LSR_THRE ; 
 scalar_t__ UART_MSR ; 
 unsigned char UART_MSR_RI ; 
 int /*<<< orphan*/  XMIT_WAITING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_inst)
{
	dtl1_info_t *info = dev_inst;
	unsigned int iobase;
	unsigned char msr;
	int boguscount = 0;
	int iir, lsr;
	irqreturn_t r = IRQ_NONE;

	FUNC1(!info->hdev);

	iobase = info->p_dev->io.BasePort1;

	FUNC6(&(info->lock));

	iir = FUNC5(iobase + UART_IIR) & UART_IIR_ID;
	while (iir) {

		r = IRQ_HANDLED;
		/* Clear interrupt */
		lsr = FUNC5(iobase + UART_LSR);

		switch (iir) {
		case UART_IIR_RLSI:
			FUNC0("RLSI");
			break;
		case UART_IIR_RDI:
			/* Receive interrupt */
			FUNC3(info);
			break;
		case UART_IIR_THRI:
			if (lsr & UART_LSR_THRE) {
				/* Transmitter ready for data */
				FUNC4(info);
			}
			break;
		default:
			FUNC0("Unhandled IIR=%#x", iir);
			break;
		}

		/* Make sure we don't stay here too long */
		if (boguscount++ > 100)
			break;

		iir = FUNC5(iobase + UART_IIR) & UART_IIR_ID;

	}

	msr = FUNC5(iobase + UART_MSR);

	if (info->ri_latch ^ (msr & UART_MSR_RI)) {
		info->ri_latch = msr & UART_MSR_RI;
		FUNC2(XMIT_WAITING, &(info->tx_state));
		FUNC4(info);
		r = IRQ_HANDLED;
	}

	FUNC7(&(info->lock));

	return r;
}