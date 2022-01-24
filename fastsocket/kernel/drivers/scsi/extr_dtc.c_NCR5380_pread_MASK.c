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
 int CSR_DIR_READ ; 
 int CSR_HOST_BUF_NOT_RDY ; 
 int CSR_INT_BASE ; 
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
 scalar_t__ base ; 
 int dtc_maxi ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static inline int FUNC6(struct Scsi_Host *instance, unsigned char *dst, int len)
{
	unsigned char *d = dst;
	int i;			/* For counting time spent in the poll-loop */
	FUNC0();
	FUNC2(instance);

	i = 0;
	FUNC1(RESET_PARITY_INTERRUPT_REG);
	FUNC3(MODE_REG, MR_ENABLE_EOP_INTR | MR_DMA_MODE);
	if (instance->irq == SCSI_IRQ_NONE)
		FUNC3(DTC_CONTROL_REG, CSR_DIR_READ);
	else
		FUNC3(DTC_CONTROL_REG, CSR_DIR_READ | CSR_INT_BASE);
	FUNC3(DTC_BLK_CNT, len >> 7);	/* Block count */
	FUNC5(1);
	while (len > 0) {
		FUNC5(2);
		while (FUNC1(DTC_CONTROL_REG) & CSR_HOST_BUF_NOT_RDY)
			++i;
		FUNC5(3);
		FUNC4(d, base + DTC_DATA_BUF, 128);
		d += 128;
		len -= 128;
		FUNC5(7);
		/*** with int's on, it sometimes hangs after here.
		 * Looks like something makes HBNR go away. */
	}
	FUNC5(4);
	while (!(FUNC1(DTC_CONTROL_REG) & D_CR_ACCESS))
		++i;
	FUNC3(MODE_REG, 0);	/* Clear the operating mode */
	FUNC5(0);
	FUNC1(RESET_PARITY_INTERRUPT_REG);
	if (i > dtc_maxi)
		dtc_maxi = i;
	return (0);
}