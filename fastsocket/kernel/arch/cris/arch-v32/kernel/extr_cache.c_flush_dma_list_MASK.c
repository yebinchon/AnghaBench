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
struct dma_descr_data {scalar_t__ next; scalar_t__ eol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_descr_data*,int) ; 
 struct dma_descr_data* FUNC1 (unsigned int) ; 

void FUNC2(struct dma_descr_data *descr)
{
	while (1) {
		FUNC0(descr, 1);
		if (descr->eol)
			break;
		descr = FUNC1((unsigned)descr->next);
	}
}