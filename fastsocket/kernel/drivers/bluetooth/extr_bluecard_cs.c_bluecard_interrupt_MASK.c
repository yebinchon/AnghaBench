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
struct TYPE_8__ {int ctrl_reg; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_state; TYPE_2__* p_dev; int /*<<< orphan*/  hw_state; int /*<<< orphan*/  hdev; } ;
typedef  TYPE_3__ bluecard_info_t ;
struct TYPE_6__ {unsigned int BasePort1; } ;
struct TYPE_7__ {TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CARD_READY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ REG_COMMAND ; 
 int REG_COMMAND_RX_BUF_ONE ; 
 int REG_COMMAND_RX_BUF_TWO ; 
 scalar_t__ REG_CONTROL ; 
 int REG_CONTROL_INTERRUPT ; 
 scalar_t__ REG_INTERRUPT ; 
 int /*<<< orphan*/  XMIT_BUF_ONE_READY ; 
 int /*<<< orphan*/  XMIT_BUF_TWO_READY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 unsigned char FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_inst)
{
	bluecard_info_t *info = dev_inst;
	unsigned int iobase;
	unsigned char reg;

	FUNC0(!info->hdev);

	if (!FUNC8(CARD_READY, &(info->hw_state)))
		return IRQ_HANDLED;

	iobase = info->p_dev->io.BasePort1;

	FUNC6(&(info->lock));

	/* Disable interrupt */
	info->ctrl_reg &= ~REG_CONTROL_INTERRUPT;
	FUNC4(info->ctrl_reg, iobase + REG_CONTROL);

	reg = FUNC3(iobase + REG_INTERRUPT);

	if ((reg != 0x00) && (reg != 0xff)) {

		if (reg & 0x04) {
			FUNC1(info, 0x00);
			FUNC4(0x04, iobase + REG_INTERRUPT);
			FUNC4(REG_COMMAND_RX_BUF_ONE, iobase + REG_COMMAND);
		}

		if (reg & 0x08) {
			FUNC1(info, 0x10);
			FUNC4(0x08, iobase + REG_INTERRUPT);
			FUNC4(REG_COMMAND_RX_BUF_TWO, iobase + REG_COMMAND);
		}

		if (reg & 0x01) {
			FUNC5(XMIT_BUF_ONE_READY, &(info->tx_state));
			FUNC4(0x01, iobase + REG_INTERRUPT);
			FUNC2(info);
		}

		if (reg & 0x02) {
			FUNC5(XMIT_BUF_TWO_READY, &(info->tx_state));
			FUNC4(0x02, iobase + REG_INTERRUPT);
			FUNC2(info);
		}

	}

	/* Enable interrupt */
	info->ctrl_reg |= REG_CONTROL_INTERRUPT;
	FUNC4(info->ctrl_reg, iobase + REG_CONTROL);

	FUNC7(&(info->lock));

	return IRQ_HANDLED;
}