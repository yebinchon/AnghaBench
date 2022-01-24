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
struct usbpn_dev {int /*<<< orphan*/  rx_pipe; int /*<<< orphan*/  usb; struct net_device* dev; } ;
struct urb {scalar_t__ transfer_flags; } ;
struct page {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct page* FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  rx_complete ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usbpn_dev *pnd, struct urb *req, gfp_t gfp_flags)
{
	struct net_device *dev = pnd->dev;
	struct page *page;
	int err;

	page = FUNC0(dev, gfp_flags);
	if (!page)
		return -ENOMEM;

	FUNC5(req, pnd->usb, pnd->rx_pipe, FUNC3(page),
				PAGE_SIZE, rx_complete, dev);
	req->transfer_flags = 0;
	err = FUNC6(req, gfp_flags);
	if (FUNC4(err)) {
		FUNC1(&dev->dev, "RX submit error (%d)\n", err);
		FUNC2(dev, page);
	}
	return err;
}