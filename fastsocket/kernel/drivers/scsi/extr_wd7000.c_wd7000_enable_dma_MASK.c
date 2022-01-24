#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dma; scalar_t__ iobase; int /*<<< orphan*/  control; } ;
typedef  TYPE_1__ Adapter ;

/* Variables and functions */
 scalar_t__ ASC_CONTROL ; 
 int /*<<< orphan*/  DMA_EN ; 
 int /*<<< orphan*/  DMA_MODE_CASCADE ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(Adapter * host)
{
	unsigned long flags;
	host->control |= DMA_EN;
	FUNC2(host->control, host->iobase + ASC_CONTROL);

	flags = FUNC0();
	FUNC4(host->dma, DMA_MODE_CASCADE);
	FUNC1(host->dma);
	FUNC3(flags);

}