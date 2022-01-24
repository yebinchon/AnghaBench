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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct bcom_task {int dummy; } ;
struct bcom_fec_bd {int /*<<< orphan*/  skb_pa; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FEC_RX_BUFFER_SIZE ; 
 scalar_t__ FUNC0 (struct bcom_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcom_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcom_task*,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct bcom_task *rxtsk)
{
	while (!FUNC1(rxtsk)) {
		struct sk_buff *skb;
		struct bcom_fec_bd *bd;

		skb = FUNC3(FEC_RX_BUFFER_SIZE);
		if (skb == NULL)
			return -EAGAIN;

		/* zero out the initial receive buffers to aid debugging */
		FUNC5(skb->data, 0, FEC_RX_BUFFER_SIZE);

		bd = (struct bcom_fec_bd *)FUNC0(rxtsk);

		bd->status = FEC_RX_BUFFER_SIZE;
		bd->skb_pa = FUNC4(dev->dev.parent, skb->data,
				FEC_RX_BUFFER_SIZE, DMA_FROM_DEVICE);

		FUNC2(rxtsk, skb);
	}

	return 0;
}