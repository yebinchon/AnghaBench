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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  locality; scalar_t__ iobase; int /*<<< orphan*/  int_queue; int /*<<< orphan*/  read_queue; } ;
struct tpm_chip {TYPE_1__ vendor; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int TPM_INTF_CMD_READY_INT ; 
 int TPM_INTF_DATA_AVAIL_INT ; 
 int TPM_INTF_LOCALITY_CHANGE_INT ; 
 int TPM_INTF_STS_VALID_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tpm_chip*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int dummy, void *dev_id)
{
	struct tpm_chip *chip = dev_id;
	u32 interrupt;
	int i;

	interrupt = FUNC2(chip->vendor.iobase +
			     FUNC0(chip->vendor.locality));

	if (interrupt == 0)
		return IRQ_NONE;

	if (interrupt & TPM_INTF_DATA_AVAIL_INT)
		FUNC4(&chip->vendor.read_queue);
	if (interrupt & TPM_INTF_LOCALITY_CHANGE_INT)
		for (i = 0; i < 5; i++)
			if (FUNC1(chip, i) >= 0)
				break;
	if (interrupt &
	    (TPM_INTF_LOCALITY_CHANGE_INT | TPM_INTF_STS_VALID_INT |
	     TPM_INTF_CMD_READY_INT))
		FUNC4(&chip->vendor.int_queue);

	/* Clear interrupts handled with TPM_EOI */
	FUNC3(interrupt,
		  chip->vendor.iobase +
		  FUNC0(chip->vendor.locality));
	FUNC2(chip->vendor.iobase + FUNC0(chip->vendor.locality));
	return IRQ_HANDLED;
}