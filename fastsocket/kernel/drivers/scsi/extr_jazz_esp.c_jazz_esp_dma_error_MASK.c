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
struct esp {scalar_t__ dma_regs; } ;

/* Variables and functions */
 int R4030_ADDR_INTR ; 
 int R4030_MEM_INTR ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct esp *esp)
{
	u32 enable = FUNC0((int)esp->dma_regs);

	if (enable & (R4030_MEM_INTR|R4030_ADDR_INTR))
		return 1;

	return 0;
}