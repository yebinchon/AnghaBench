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
struct idmac_channel {int /*<<< orphan*/  chan_mutex; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct idmac_channel* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC4(struct dma_chan *chan)
{
	struct idmac_channel *ichan = FUNC3(chan);

	FUNC1(&ichan->chan_mutex);

	FUNC0(chan);

	FUNC2(&ichan->chan_mutex);
}