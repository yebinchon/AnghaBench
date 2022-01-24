#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dma; } ;
struct TYPE_3__ {int size; int chan; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MODE_WRITE ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev, int dma_index, int n)
{
	int dma_chan;
	unsigned long dma_ptr;
	unsigned long flags;

	devpriv->dma[dma_index].size = n;
	dma_chan = devpriv->dma[dma_index].chan;
	dma_ptr = FUNC7(devpriv->dma[dma_index].buf);

	FUNC6(dma_chan, DMA_MODE_WRITE);
	flags = FUNC0();
	FUNC1(dma_chan);
	FUNC4(dma_chan, dma_ptr);
	FUNC5(dma_chan, n);
	FUNC3(flags);

	FUNC2(dma_chan);

	return n;
}