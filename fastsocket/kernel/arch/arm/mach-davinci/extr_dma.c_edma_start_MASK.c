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
struct TYPE_2__ {unsigned int num_channels; int /*<<< orphan*/  edma_noevent; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  EDMA_EMCR ; 
 int EINVAL ; 
 int /*<<< orphan*/  SH_EER ; 
 int /*<<< orphan*/  SH_EESR ; 
 int /*<<< orphan*/  SH_ER ; 
 int /*<<< orphan*/  SH_ESR ; 
 int /*<<< orphan*/  SH_SECR ; 
 TYPE_1__** edma_info ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC7(unsigned channel)
{
	unsigned ctlr;

	ctlr = FUNC1(channel);
	channel = FUNC0(channel);

	if (channel < edma_info[ctlr]->num_channels) {
		int j = channel >> 5;
		unsigned int mask = (1 << (channel & 0x1f));

		/* EDMA channels without event association */
		if (FUNC6(channel, edma_info[ctlr]->edma_noevent)) {
			FUNC5("EDMA: ESR%d %08x\n", j,
				FUNC2(ctlr, SH_ESR, j));
			FUNC3(ctlr, SH_ESR, j, mask);
			return 0;
		}

		/* EDMA channel with event association */
		FUNC5("EDMA: ER%d %08x\n", j,
			FUNC2(ctlr, SH_ER, j));
		/* Clear any pending error */
		FUNC4(ctlr, EDMA_EMCR, j, mask);
		/* Clear any SER */
		FUNC3(ctlr, SH_SECR, j, mask);
		FUNC3(ctlr, SH_EESR, j, mask);
		FUNC5("EDMA: EER%d %08x\n", j,
			FUNC2(ctlr, SH_EER, j));
		return 0;
	}

	return -EINVAL;
}