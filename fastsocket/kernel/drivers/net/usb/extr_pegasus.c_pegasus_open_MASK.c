#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  usb; int /*<<< orphan*/  net; int /*<<< orphan*/  intr_interval; int /*<<< orphan*/  intr_buff; TYPE_5__* rx_skb; } ;
typedef  TYPE_1__ pegasus_t ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EthID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PEGASUS_MTU ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  intr_callback ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_5__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  read_bulk_callback ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct net_device *net)
{
	pegasus_t *pegasus = FUNC2(net);
	int res;

	if (pegasus->rx_skb == NULL)
		pegasus->rx_skb = FUNC7(pegasus);
	/*
	 ** Note: no point to free the pool.  it is empty :-)
	 */
	if (!pegasus->rx_skb)
		return -ENOMEM;

	res = FUNC9(pegasus, EthID, 6, net->dev_addr);
	
	FUNC10(pegasus->rx_urb, pegasus->usb,
			  FUNC13(pegasus->usb, 1),
			  pegasus->rx_skb->data, PEGASUS_MTU + 8,
			  read_bulk_callback, pegasus);
	if ((res = FUNC15(pegasus->rx_urb, GFP_KERNEL))) {
		if (res == -ENODEV)
			FUNC3(pegasus->net);
		if (FUNC4(pegasus))
			FUNC6("%s: failed rx_urb, %d", net->name, res);
		goto exit;
	}

	FUNC11(pegasus->intr_urb, pegasus->usb,
			 FUNC14(pegasus->usb, 3),
			 pegasus->intr_buff, sizeof (pegasus->intr_buff),
			 intr_callback, pegasus, pegasus->intr_interval);
	if ((res = FUNC15(pegasus->intr_urb, GFP_KERNEL))) {
		if (res == -ENODEV)
			FUNC3(pegasus->net);
		if (FUNC4(pegasus))
			FUNC6("%s: failed intr_urb, %d\n", net->name, res);
		FUNC12(pegasus->rx_urb);
		goto exit;
	}
	if ((res = FUNC0(net, pegasus->usb))) {
		if (FUNC4(pegasus))
			FUNC6("%s: can't enable_net_traffic() - %d\n",
					net->name, res);
		res = -EIO;
		FUNC12(pegasus->rx_urb);
		FUNC12(pegasus->intr_urb);
		FUNC1(pegasus);
		goto exit;
	}
	FUNC8(net);
	FUNC5(net);
	if (FUNC4(pegasus))
		FUNC6("%s: open\n", net->name);
	res = 0;
exit:
	return res;
}