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
 int /*<<< orphan*/  IOP13XX_ATUX_ATUISR ; 
 unsigned int IOP13XX_ATUX_ATUISR_ERROR ; 
 int /*<<< orphan*/  IOP13XX_ATUX_ATUSR ; 
 unsigned int IOP_PCI_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int clear)
{
	unsigned int status;
	int err = 0;

	/*
	 * Check the status registers.
	 */
	status = FUNC2(IOP13XX_ATUX_ATUSR);
	if (status & IOP_PCI_STATUS_ERROR)
	{
		FUNC0("\t\t\tPCI error: ATUSR %#08x", status);
		if(clear)
			FUNC4(status & IOP_PCI_STATUS_ERROR,
				IOP13XX_ATUX_ATUSR);
		err = 1;
	}
	status = FUNC1(IOP13XX_ATUX_ATUISR);
	if (status & IOP13XX_ATUX_ATUISR_ERROR)
	{
		FUNC0("\t\t\tPCI error interrupt:  ATUISR %#08x", status);
		if(clear)
			FUNC3(status & IOP13XX_ATUX_ATUISR_ERROR,
				IOP13XX_ATUX_ATUISR);
		err = 1;
	}
	return err;
}