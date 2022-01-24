#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_10__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_state; TYPE_3__* hdev; TYPE_2__* p_dev; } ;
typedef  TYPE_4__ bt3c_info_t ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {unsigned int BasePort1; } ;
struct TYPE_8__ {TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ CONTROL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  XMIT_SENDING ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int,int) ; 
 int FUNC4 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_inst)
{
	bt3c_info_t *info = dev_inst;
	unsigned int iobase;
	int iir;
	irqreturn_t r = IRQ_NONE;

	FUNC2(!info->hdev);

	iobase = info->p_dev->io.BasePort1;

	FUNC10(&(info->lock));

	iir = FUNC8(iobase + CONTROL);
	if (iir & 0x80) {
		int stat = FUNC4(iobase, 0x7001);

		if ((stat & 0xff) == 0x7f) {
			FUNC0("Very strange (stat=0x%04x)", stat);
		} else if ((stat & 0xff) != 0xff) {
			if (stat & 0x0020) {
				int status = FUNC4(iobase, 0x7002) & 0x10;
				FUNC1("%s: Antenna %s", info->hdev->name,
							status ? "out" : "in");
			}
			if (stat & 0x0001)
				FUNC5(info);
			if (stat & 0x0002) {
				//BT_ERR("Ack (stat=0x%04x)", stat);
				FUNC7(XMIT_SENDING, &(info->tx_state));
				FUNC6(info);
			}

			FUNC3(iobase, 0x7001, 0x0000);

			FUNC9(iir, iobase + CONTROL);
		}
		r = IRQ_HANDLED;
	}

	FUNC11(&(info->lock));

	return r;
}