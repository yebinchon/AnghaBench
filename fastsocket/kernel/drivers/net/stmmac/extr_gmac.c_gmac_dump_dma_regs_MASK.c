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
 scalar_t__ DMA_BUS_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(unsigned long ioaddr)
{
	int i;
	FUNC1(" DMA registers\n");
	for (i = 0; i < 22; i++) {
		if ((i < 9) || (i > 17)) {
			int offset = i * 4;
			FUNC0("\t Reg No. %d (offset 0x%x): 0x%08x\n", i,
			       (DMA_BUS_MODE + offset),
			       FUNC2(ioaddr + DMA_BUS_MODE + offset));
		}
	}
	return;
}