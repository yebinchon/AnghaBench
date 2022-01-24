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
struct Scsi_Host {scalar_t__ irq; } ;

/* Variables and functions */
 int CSR_5380_INTR ; 
 int CSR_HOST_BUF_NOT_RDY ; 
 int /*<<< orphan*/  DTC_BLK_CNT ; 
 int /*<<< orphan*/  DTC_CONTROL_REG ; 
 scalar_t__ DTC_DATA_BUF ; 
 int D_CR_ACCESS ; 
 int /*<<< orphan*/  MODE_REG ; 
 int MR_DMA_MODE ; 
 int MR_ENABLE_EOP_INTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESET_PARITY_INTERRUPT_REG ; 
 scalar_t__ SCSI_IRQ_NONE ; 
 int /*<<< orphan*/  TARGET_COMMAND_REG ; 
 int TCR_LAST_BYTE_SENT ; 
 scalar_t__ base ; 
 int dtc_wmaxi ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static inline int FUNC6(struct Scsi_Host *instance, unsigned char *src, int len)
{
	int i;
	FUNC0();
	FUNC2(instance);

	FUNC1(RESET_PARITY_INTERRUPT_REG);
	FUNC3(MODE_REG, MR_ENABLE_EOP_INTR | MR_DMA_MODE);
	/* set direction (write) */
	if (instance->irq == SCSI_IRQ_NONE)
		FUNC3(DTC_CONTROL_REG, 0);
	else
		FUNC3(DTC_CONTROL_REG, CSR_5380_INTR);
	FUNC3(DTC_BLK_CNT, len >> 7);	/* Block count */
	for (i = 0; len > 0; ++i) {
		FUNC5(5);
		/* Poll until the host buffer can accept data. */
		while (FUNC1(DTC_CONTROL_REG) & CSR_HOST_BUF_NOT_RDY)
			++i;
		FUNC5(3);
		FUNC4(base + DTC_DATA_BUF, src, 128);
		src += 128;
		len -= 128;
	}
	FUNC5(4);
	while (!(FUNC1(DTC_CONTROL_REG) & D_CR_ACCESS))
		++i;
	FUNC5(6);
	/* Wait until the last byte has been sent to the disk */
	while (!(FUNC1(TARGET_COMMAND_REG) & TCR_LAST_BYTE_SENT))
		++i;
	FUNC5(7);
	/* Check for parity error here. fixme. */
	FUNC3(MODE_REG, 0);	/* Clear the operating mode */
	FUNC5(0);
	if (i > dtc_wmaxi)
		dtc_wmaxi = i;
	return (0);
}