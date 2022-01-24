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
typedef  int uint32_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ plx9080_iobase; scalar_t__ hpdi_iobase; void* rx_fifo_size; void* tx_fifo_size; } ;

/* Variables and functions */
 scalar_t__ BOARD_CONTROL_REG ; 
 int BOARD_RESET_BIT ; 
 int ICS_AERR ; 
 int ICS_DMA0_E ; 
 int ICS_LIE ; 
 int ICS_PAIE ; 
 int ICS_PERR ; 
 int ICS_PIE ; 
 int ICS_PLIE ; 
 scalar_t__ INTERRUPT_CONTROL_REG ; 
 scalar_t__ PLX_INTRCS_REG ; 
 scalar_t__ RX_FIFO_SIZE_REG ; 
 scalar_t__ RX_PROG_ALMOST_REG ; 
 scalar_t__ TX_FIFO_SIZE_REG ; 
 scalar_t__ TX_PROG_ALMOST_REG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev)
{
	uint32_t plx_intcsr_bits;

	FUNC6(BOARD_RESET_BIT, FUNC3(dev)->hpdi_iobase + BOARD_CONTROL_REG);
	FUNC5(10);

	FUNC6(FUNC0(32) | FUNC1(32),
	       FUNC3(dev)->hpdi_iobase + RX_PROG_ALMOST_REG);
	FUNC6(FUNC0(32) | FUNC1(32),
	       FUNC3(dev)->hpdi_iobase + TX_PROG_ALMOST_REG);

	FUNC3(dev)->tx_fifo_size = FUNC2(FUNC4(FUNC3(dev)->hpdi_iobase +
						  TX_FIFO_SIZE_REG));
	FUNC3(dev)->rx_fifo_size = FUNC2(FUNC4(FUNC3(dev)->hpdi_iobase +
						  RX_FIFO_SIZE_REG));

	FUNC6(0, FUNC3(dev)->hpdi_iobase + INTERRUPT_CONTROL_REG);

	/*  enable interrupts */
	plx_intcsr_bits =
	    ICS_AERR | ICS_PERR | ICS_PIE | ICS_PLIE | ICS_PAIE | ICS_LIE |
	    ICS_DMA0_E;
	FUNC6(plx_intcsr_bits, FUNC3(dev)->plx9080_iobase + PLX_INTRCS_REG);

	return 0;
}