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
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  dev; } ;
struct macvlan_dev {int /*<<< orphan*/  tap_features; int /*<<< orphan*/  minor; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  TUN_OFFLOADS ; 
 struct device* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,struct nlattr**,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  macvtap_class ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  macvtap_forward ; 
 int /*<<< orphan*/  FUNC7 (struct macvlan_dev*) ; 
 int FUNC8 (struct macvlan_dev*) ; 
 int /*<<< orphan*/  macvtap_major ; 
 int /*<<< orphan*/  macvtap_receive ; 
 struct macvlan_dev* FUNC9 (struct net_device*) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev,
			   struct nlattr *tb[],
			   struct nlattr *data[])
{
	struct device *classdev;
	struct macvlan_dev *vlan;
	dev_t devt;
	int err;

	err = FUNC5(dev, tb, data,
				     macvtap_receive, macvtap_forward);
	if (err)
		goto out;

	vlan = FUNC9(dev);
	err = FUNC8(vlan);
	if (err)
		return FUNC10(err);

	devt = FUNC2(FUNC1(macvtap_major), vlan->minor);

	classdev = FUNC4(macvtap_class, &dev->dev, devt,
				 dev, "tap%d", dev->ifindex);
	if (FUNC0(classdev)) {
		err = FUNC3(classdev);
		FUNC6(dev);
		FUNC7(vlan);
	}

	vlan->tap_features = TUN_OFFLOADS;

out:
	return err;
}