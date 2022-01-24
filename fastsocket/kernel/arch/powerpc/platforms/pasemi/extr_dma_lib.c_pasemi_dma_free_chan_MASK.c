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
struct pasemi_dmachan {int chan_type; int /*<<< orphan*/  priv; int /*<<< orphan*/  chno; scalar_t__ ring_virt; } ;

/* Variables and functions */
#define  RXCHAN 129 
#define  TXCHAN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pasemi_dmachan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct pasemi_dmachan *chan)
{
	if (chan->ring_virt)
		FUNC1(chan);

	switch (chan->chan_type & (RXCHAN|TXCHAN)) {
	case RXCHAN:
		FUNC2(chan->chno);
		break;
	case TXCHAN:
		FUNC3(chan->chno);
		break;
	}

	FUNC0(chan->priv);
}