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
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  EDMA_ECR ; 
 int /*<<< orphan*/  EDMA_ECRH ; 
 TYPE_1__** edma_info ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int) ; 

void FUNC3(unsigned channel)
{
	unsigned ctlr;

	ctlr = FUNC1(channel);
	channel = FUNC0(channel);

	if (channel >= edma_info[ctlr]->num_channels)
		return;
	if (channel < 32)
		FUNC2(ctlr, EDMA_ECR, 1 << channel);
	else
		FUNC2(ctlr, EDMA_ECRH, 1 << (channel - 32));
}