#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_8__ {TYPE_5__* skb; int /*<<< orphan*/  head; int /*<<< orphan*/  truesize; } ;
struct mcs_cb {TYPE_1__ rx_buff; int /*<<< orphan*/  irlap; int /*<<< orphan*/  qos; TYPE_2__* usbdev; int /*<<< orphan*/  rx_time; scalar_t__ receiving; int /*<<< orphan*/  ep_out; int /*<<< orphan*/  ep_in; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
struct TYPE_9__ {int devnum; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IRDA_SKB_MAX_MTU ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int FUNC6 (struct mcs_cb*) ; 
 int FUNC7 (struct mcs_cb*) ; 
 int /*<<< orphan*/  FUNC8 (struct mcs_cb*) ; 
 struct mcs_cb* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct net_device *netdev)
{
	struct mcs_cb *mcs = FUNC9(netdev);
	char hwname[16];
	int ret = 0;

	ret = FUNC13(mcs->usbdev,
			     FUNC15(mcs->usbdev, mcs->ep_in));
	if (ret)
		goto error1;
	ret = FUNC13(mcs->usbdev,
			     FUNC14(mcs->usbdev, mcs->ep_out));
	if (ret)
		goto error1;

	ret = FUNC7(mcs);
	if (ret)
		goto error1;

	ret = -ENOMEM;

	/* Initialize for SIR/FIR to copy data directly into skb.  */
	mcs->receiving = 0;
	mcs->rx_buff.truesize = IRDA_SKB_MAX_MTU;
	mcs->rx_buff.skb = FUNC1(IRDA_SKB_MAX_MTU);
	if (!mcs->rx_buff.skb)
		goto error1;

	FUNC11(mcs->rx_buff.skb, 1);
	mcs->rx_buff.head = mcs->rx_buff.skb->data;
	FUNC2(&mcs->rx_time);

	/*
	 * Now that everything should be initialized properly,
	 * Open new IrLAP layer instance to take care of us...
	 * Note : will send immediately a speed change...
	 */
	FUNC12(hwname, "usb#%d", mcs->usbdev->devnum);
	mcs->irlap = FUNC4(netdev, &mcs->qos, hwname);
	if (!mcs->irlap) {
		FUNC0("mcs7780: irlap_open failed\n");
		goto error2;
	}

	if (!FUNC8(mcs))
	goto error3;

	ret = FUNC6(mcs);
	if (ret)
		goto error3;

	FUNC10(netdev);
	return 0;

	error3:
		FUNC3(mcs->irlap);
	error2:
		FUNC5(mcs->rx_buff.skb);
	error1:
		return ret;
}