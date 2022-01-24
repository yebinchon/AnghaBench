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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct rtl8169_private {int /*<<< orphan*/  dev; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (void*) ; 

__attribute__((used)) static struct sk_buff *FUNC6(void *data,
					   struct rtl8169_private *tp,
					   int pkt_size,
					   dma_addr_t addr)
{
	struct sk_buff *skb;
	struct device *d = &tp->pci_dev->dev;

	data = FUNC5(data);
	FUNC0(d, addr, pkt_size, DMA_FROM_DEVICE);
	FUNC4(data);
	skb = FUNC3(tp->dev, pkt_size);
	if (skb)
		FUNC2(skb->data, data, pkt_size);
	FUNC1(d, addr, pkt_size, DMA_FROM_DEVICE);

	return skb;
}