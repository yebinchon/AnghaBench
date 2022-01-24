#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pasemi_mac {TYPE_2__* dma_pdev; } ;
struct TYPE_4__ {int chno; } ;
struct TYPE_6__ {TYPE_1__ chan; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PAS_DMA_RXCHAN_CCMDSTA_ACT ; 
 int /*<<< orphan*/  PAS_DMA_RXCHAN_CCMDSTA_ST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pasemi_mac *mac)
{
	unsigned int sta, retries;
	int rxch = FUNC4(mac)->chan.chno;

	FUNC5(FUNC0(rxch),
		      PAS_DMA_RXCHAN_CCMDSTA_ST);
	for (retries = 0; retries < MAX_RETRIES; retries++) {
		sta = FUNC3(FUNC0(rxch));
		if (!(sta & PAS_DMA_RXCHAN_CCMDSTA_ACT))
			break;
		FUNC1();
	}

	if (sta & PAS_DMA_RXCHAN_CCMDSTA_ACT)
		FUNC2(&mac->dma_pdev->dev,
			"Failed to stop rx channel, ccmdsta 08%x\n", sta);
	FUNC5(FUNC0(rxch), 0);
}