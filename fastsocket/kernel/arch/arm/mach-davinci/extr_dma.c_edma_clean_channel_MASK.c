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
struct TYPE_2__ {unsigned int num_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDMA_CCERRCLR ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  EDMA_EMCR ; 
 int /*<<< orphan*/  EDMA_EMR ; 
 int /*<<< orphan*/  SH_ECR ; 
 int /*<<< orphan*/  SH_SECR ; 
 TYPE_1__** edma_info ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 

void FUNC7(unsigned channel)
{
	unsigned ctlr;

	ctlr = FUNC1(channel);
	channel = FUNC0(channel);

	if (channel < edma_info[ctlr]->num_channels) {
		int j = (channel >> 5);
		unsigned int mask = 1 << (channel & 0x1f);

		FUNC6("EDMA: EMR%d %08x\n", j,
				FUNC2(ctlr, EDMA_EMR, j));
		FUNC3(ctlr, SH_ECR, j, mask);
		/* Clear the corresponding EMR bits */
		FUNC5(ctlr, EDMA_EMCR, j, mask);
		/* Clear any SER */
		FUNC3(ctlr, SH_SECR, j, mask);
		FUNC4(ctlr, EDMA_CCERRCLR, (1 << 16) | 0x3);
	}
}