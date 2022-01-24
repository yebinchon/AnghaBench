#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dma; } ;
struct TYPE_4__ {int length; int /*<<< orphan*/  start_time; struct sk_buff* skb; scalar_t__ direction; int /*<<< orphan*/ * target; } ;
struct TYPE_5__ {int hcr_val; int /*<<< orphan*/  busy; scalar_t__ rx_active; TYPE_1__ current_dma; int /*<<< orphan*/  dmaing; void* dma_buffer; } ;
typedef  TYPE_2__ elp_device ;

/* Variables and functions */
 int DIR ; 
 int DMAE ; 
 unsigned long MAX_DMA_ADDRESS ; 
 int TCEN ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int elp_debug ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  jiffies ; 
 TYPE_2__* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 void* FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC18(struct net_device *dev, int len)
{
	int rlen;
	elp_device *adapter = FUNC6(dev);
	void *target;
	struct sk_buff *skb;
	unsigned long flags;

	rlen = (len + 1) & ~1;
	skb = FUNC2(rlen + 2);

	if (!skb) {
		FUNC10("%s: memory squeeze, dropping packet\n", dev->name);
		target = adapter->dma_buffer;
		adapter->current_dma.target = NULL;
		/* FIXME: stats */
		return;
	}

	FUNC16(skb, 2);
	target = FUNC15(skb, rlen);
	if ((unsigned long)(target + rlen) >= MAX_DMA_ADDRESS) {
		adapter->current_dma.target = target;
		target = adapter->dma_buffer;
	} else {
		adapter->current_dma.target = NULL;
	}

	/* if this happens, we die */
	if (FUNC17(0, (void *) &adapter->dmaing))
		FUNC9("%s: rx blocked, DMA in progress, dir %d\n",
			dev->name, adapter->current_dma.direction);

	adapter->current_dma.direction = 0;
	adapter->current_dma.length = rlen;
	adapter->current_dma.skb = skb;
	adapter->current_dma.start_time = jiffies;

	FUNC7(adapter->hcr_val | DIR | TCEN | DMAE, dev);

	flags=FUNC0();
	FUNC3(dev->dma);
	FUNC1(dev->dma);
	FUNC14(dev->dma, 0x04);	/* dma read */
	FUNC12(dev->dma, FUNC5(target));
	FUNC13(dev->dma, rlen);
	FUNC4(dev->dma);
	FUNC11(flags);

	if (elp_debug >= 3) {
		FUNC8("%s: rx DMA transfer started\n", dev->name);
	}

	if (adapter->rx_active)
		adapter->rx_active--;

	if (!adapter->busy)
		FUNC10("%s: receive_packet called, busy not set.\n", dev->name);
}