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
typedef  int /*<<< orphan*/  u16 ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct cnic_local {int dummy; } ;
struct cnic_dev {struct cnic_local* cnic_priv; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 unsigned long NETDEV_GOING_DOWN ; 
 unsigned long NETDEV_REGISTER ; 
 unsigned long NETDEV_UNREGISTER ; 
 unsigned long NETDEV_UP ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  VLAN_TAG_PRESENT ; 
 int /*<<< orphan*/  cnic_dev_lock ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_dev*) ; 
 struct cnic_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct net_device**) ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct cnic_local*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct cnic_dev*) ; 
 struct cnic_dev* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct notifier_block *this, unsigned long event,
							 void *ptr)
{
	struct net_device *netdev = ptr;
	struct cnic_dev *dev;
	int new_dev = 0;

	dev = FUNC1(netdev);

	if (!dev && (event == NETDEV_REGISTER || FUNC16(netdev))) {
		/* Check for the hot-plug device */
		dev = FUNC14(netdev);
		if (dev) {
			new_dev = 1;
			FUNC3(dev);
		}
	}
	if (dev) {
		struct cnic_local *cp = dev->cnic_priv;

		if (new_dev)
			FUNC10(dev);
		else if (event == NETDEV_UNREGISTER)
			FUNC9(dev);

		if (event == NETDEV_UP || (new_dev && FUNC16(netdev))) {
			if (FUNC6(dev) != 0) {
				FUNC4(dev);
				goto done;
			}
			if (!FUNC7(dev))
				FUNC11(dev);
		}

		FUNC5(cp, event, 0);

		if (event == NETDEV_GOING_DOWN) {
			FUNC12(dev);
			FUNC8(dev);
			FUNC13(dev);
		} else if (event == NETDEV_UNREGISTER) {
			FUNC17(&cnic_dev_lock);
			FUNC15(&dev->list);
			FUNC18(&cnic_dev_lock);

			FUNC4(dev);
			FUNC0(dev);
			goto done;
		}
		FUNC4(dev);
	} else {
		struct net_device *realdev;
		u16 vid;

		vid = FUNC2(netdev, &realdev);
		if (realdev) {
			dev = FUNC1(realdev);
			if (dev) {
				vid |= VLAN_TAG_PRESENT;
				FUNC5(dev->cnic_priv, event, vid);
				FUNC4(dev);
			}
		}
	}
done:
	return NOTIFY_DONE;
}