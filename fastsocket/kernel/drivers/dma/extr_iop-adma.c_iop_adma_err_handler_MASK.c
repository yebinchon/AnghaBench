#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iop_adma_chan {TYPE_2__* device; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iop_adma_chan*) ; 
 unsigned long FUNC3 (struct iop_adma_chan*) ; 
 scalar_t__ FUNC4 (unsigned long,struct iop_adma_chan*) ; 
 scalar_t__ FUNC5 (unsigned long,struct iop_adma_chan*) ; 
 scalar_t__ FUNC6 (unsigned long,struct iop_adma_chan*) ; 
 scalar_t__ FUNC7 (unsigned long,struct iop_adma_chan*) ; 
 scalar_t__ FUNC8 (unsigned long,struct iop_adma_chan*) ; 
 scalar_t__ FUNC9 (unsigned long,struct iop_adma_chan*) ; 
 scalar_t__ FUNC10 (unsigned long,struct iop_adma_chan*) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *data)
{
	struct iop_adma_chan *chan = data;
	unsigned long status = FUNC3(chan);

	FUNC1(KERN_ERR, chan->device->common.dev,
		"error ( %s%s%s%s%s%s%s)\n",
		FUNC5(status, chan) ? "int_parity " : "",
		FUNC7(status, chan) ? "mcu_abort " : "",
		FUNC6(status, chan) ? "int_tabort " : "",
		FUNC4(status, chan) ? "int_mabort " : "",
		FUNC9(status, chan) ? "pci_tabort " : "",
		FUNC8(status, chan) ? "pci_mabort " : "",
		FUNC10(status, chan) ? "split_tx " : "");

	FUNC2(chan);

	FUNC0();

	return IRQ_HANDLED;
}