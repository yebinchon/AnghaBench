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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev)
{
	int residue;
	int i;
	static const int disable_limit = 100;
	static const int enable_timeout = 100;
	FUNC1(devpriv->dma_chan);
	residue = FUNC3(devpriv->dma_chan);
	for (i = 0; i < disable_limit && (residue % 2); ++i) {
		int j;
		FUNC2(devpriv->dma_chan);
		for (j = 0; j < enable_timeout; ++j) {
			int new_residue;
			FUNC4(2);
			new_residue = FUNC3(devpriv->dma_chan);
			if (new_residue != residue)
				break;
		}
		FUNC1(devpriv->dma_chan);
		residue = FUNC3(devpriv->dma_chan);
	}
	if (i == disable_limit) {
		FUNC0(dev,
			     "failed to get an even dma transfer, could be trouble.");
	}
	return residue;
}