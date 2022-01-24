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
struct dma_chan {int dummy; } ;
typedef  enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;
struct TYPE_2__ {struct dma_chan* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/ * channel_table ; 
 int FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct dma_chan *FUNC3(enum dma_transaction_type tx_type)
{
	struct dma_chan *chan;
	int cpu;

	cpu = FUNC0();
	chan = FUNC1(channel_table[tx_type], cpu)->chan;
	FUNC2();

	return chan;
}