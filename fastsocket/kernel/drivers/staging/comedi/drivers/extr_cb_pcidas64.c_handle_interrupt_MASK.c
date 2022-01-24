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
struct comedi_device {scalar_t__ attached; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ plx9080_iobase; scalar_t__ main_iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ HW_STATUS_REG ; 
 int ICS_LDIA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ PLX_DBR_OUT_REG ; 
 scalar_t__ PLX_INTRCS_REG ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,unsigned short,int) ; 
 TYPE_1__* FUNC3 (struct comedi_device*) ; 
 int FUNC4 (scalar_t__) ; 
 unsigned short FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *d)
{
	struct comedi_device *dev = d;
	unsigned short status;
	uint32_t plx_status;
	uint32_t plx_bits;

	plx_status = FUNC4(FUNC3(dev)->plx9080_iobase + PLX_INTRCS_REG);
	status = FUNC5(FUNC3(dev)->main_iobase + HW_STATUS_REG);

	FUNC0("cb_pcidas64: hw status 0x%x ", status);
	FUNC0("plx status 0x%x\n", plx_status);

	/* an interrupt before all the postconfig stuff gets done could
	 * cause a NULL dereference if we continue through the
	 * interrupt handler */
	if (dev->attached == 0) {
		FUNC0("cb_pcidas64: premature interrupt, ignoring",
			    status);
		return IRQ_HANDLED;
	}
	FUNC1(dev, status, plx_status);
	FUNC2(dev, status, plx_status);

	/*  clear possible plx9080 interrupt sources */
	if (plx_status & ICS_LDIA) {	/*  clear local doorbell interrupt */
		plx_bits = FUNC4(FUNC3(dev)->plx9080_iobase + PLX_DBR_OUT_REG);
		FUNC6(plx_bits, FUNC3(dev)->plx9080_iobase + PLX_DBR_OUT_REG);
		FUNC0(" cleared local doorbell bits 0x%x\n", plx_bits);
	}

	FUNC0("exiting handler\n");

	return IRQ_HANDLED;
}