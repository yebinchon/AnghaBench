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
struct flexcop_dma {int size; int /*<<< orphan*/  dma_addr0; int /*<<< orphan*/  cpu_addr0; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flexcop_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct flexcop_dma *dma)
{
	FUNC1(dma->pdev, dma->size*2,
			dma->cpu_addr0, dma->dma_addr0);
	FUNC0(dma,0,sizeof(struct flexcop_dma));
}