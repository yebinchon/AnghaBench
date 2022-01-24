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
struct edmacc_param {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct edmacc_param*) ; 

void FUNC4(unsigned slot, dma_addr_t *src, dma_addr_t *dst)
{
	struct edmacc_param temp;
	unsigned ctlr;

	ctlr = FUNC1(slot);
	slot = FUNC0(slot);

	FUNC3(FUNC2(ctlr, slot), &temp);
	if (src != NULL)
		*src = temp.src;
	if (dst != NULL)
		*dst = temp.dst;
}