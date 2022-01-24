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
struct pasemi_mac {int /*<<< orphan*/  dma_if; TYPE_1__* dma_pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int PAS_DMA_RXINT_RCMDSTA_ACT ; 
 int /*<<< orphan*/  PAS_DMA_RXINT_RCMDSTA_ST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pasemi_mac *mac)
{
	unsigned int sta, retries;

	FUNC4(FUNC0(mac->dma_if),
		      PAS_DMA_RXINT_RCMDSTA_ST);
	for (retries = 0; retries < MAX_RETRIES; retries++) {
		sta = FUNC3(FUNC0(mac->dma_if));
		if (!(sta & PAS_DMA_RXINT_RCMDSTA_ACT))
			break;
		FUNC1();
	}

	if (sta & PAS_DMA_RXINT_RCMDSTA_ACT)
		FUNC2(&mac->dma_pdev->dev,
			"Failed to stop rx interface, rcmdsta %08x\n", sta);
	FUNC4(FUNC0(mac->dma_if), 0);
}