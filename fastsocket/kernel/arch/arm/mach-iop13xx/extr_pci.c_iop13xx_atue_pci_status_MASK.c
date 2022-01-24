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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  IOP13XX_ATUE_ATUISR ; 
 unsigned int IOP13XX_ATUE_ATUISR_ERROR ; 
 int /*<<< orphan*/  IOP13XX_ATUE_ATUSR ; 
 int /*<<< orphan*/  IOP13XX_ATUE_PIE_MSK ; 
 int /*<<< orphan*/  IOP13XX_ATUE_PIE_STS ; 
 unsigned int IOP13XX_ATUE_STAT_PCI_IFACE_ERR ; 
 unsigned int IOP_PCI_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(int clear)
{
	unsigned int status;
	int err = 0;

	/*
	 * Check the status registers.
	 */

	/* standard pci status register */
	status = FUNC3(IOP13XX_ATUE_ATUSR);
	if (status & IOP_PCI_STATUS_ERROR) {
		FUNC1("\t\t\tPCI error: ATUSR %#08x", status);
		if(clear)
			FUNC5(status & IOP_PCI_STATUS_ERROR,
				IOP13XX_ATUE_ATUSR);
		err++;
	}

	/* check the normal status bits in the ATUISR */
	status = FUNC2(IOP13XX_ATUE_ATUISR);
	if (status & IOP13XX_ATUE_ATUISR_ERROR)	{
		FUNC1("\t\t\tPCI error: ATUISR %#08x", status);
		if (clear)
			FUNC5(status & IOP13XX_ATUE_ATUISR_ERROR,
				IOP13XX_ATUE_ATUISR);
		err++;

		/* check the PCI-E status if the ATUISR reports an interface error */
		if (status & IOP13XX_ATUE_STAT_PCI_IFACE_ERR) {
			/* get the unmasked errors */
			status = FUNC2(IOP13XX_ATUE_PIE_STS) &
					~(FUNC2(IOP13XX_ATUE_PIE_MSK));

			if (status) {
				FUNC1("\t\t\tPCI-E error: ATUE_PIE_STS %#08x",
					FUNC2(IOP13XX_ATUE_PIE_STS));
				err++;
			} else {
				FUNC1("\t\t\tPCI-E error: ATUE_PIE_STS %#08x",
					FUNC2(IOP13XX_ATUE_PIE_STS));
				FUNC1("\t\t\tPCI-E error: ATUE_PIE_MSK %#08x",
					FUNC2(IOP13XX_ATUE_PIE_MSK));
				FUNC0();
			}

			if(clear)
				FUNC4(status, IOP13XX_ATUE_PIE_STS);
		}
	}

	return err;
}