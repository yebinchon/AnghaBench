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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAMDMA_IRQSTATUS_L0 ; 
 int NUM_CAMDMA_CHANNELS ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(unsigned long base)
{
	u32 csr;
	int i;

	for (i = 0; i < NUM_CAMDMA_CHANNELS; ++i) {
		csr = FUNC1(base, FUNC0(i));
		/* ack interrupt in CSR */
		FUNC2(base, FUNC0(i), csr);
	}
	FUNC2(base, CAMDMA_IRQSTATUS_L0, 0xf);
}