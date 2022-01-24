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
typedef  void sk_buff ;
struct rtl8169_private {struct net_device* dev; TYPE_1__* pci_dev; } ;
struct TYPE_4__ {scalar_t__ parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct device {int dummy; } ;
struct RxDesc {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 void* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (struct RxDesc*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ rx_buf_sz ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC10(struct rtl8169_private *tp,
					     struct RxDesc *desc)
{
	void *data;
	dma_addr_t mapping;
	struct device *d = &tp->pci_dev->dev;
	struct net_device *dev = tp->dev;
	int node = dev->dev.parent ? FUNC0(dev->dev.parent) : -1;

	data = FUNC4(rx_buf_sz, GFP_KERNEL, node);
	if (!data)
		return NULL;

	if (FUNC7(data) != data) {
		FUNC3(data);
		data = FUNC4(rx_buf_sz + 15, GFP_KERNEL, node);
		if (!data)
			return NULL;
	}

	mapping = FUNC1(d, FUNC7(data), rx_buf_sz,
				 DMA_FROM_DEVICE);
	if (FUNC9(FUNC2(d, mapping))) {
		if (FUNC5())
			FUNC6(tp, drv, tp->dev, "Failed to map RX DMA!\n");
		goto err_out;
	}

	FUNC8(desc, mapping, rx_buf_sz);
	return data;

err_out:
	FUNC3(data);
	return NULL;
}