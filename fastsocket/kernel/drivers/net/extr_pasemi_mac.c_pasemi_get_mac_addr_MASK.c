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
typedef  int /*<<< orphan*/  const u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pasemi_mac {int /*<<< orphan*/  mac_addr; struct pci_dev* pdev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC3 (struct device_node*,char*,int*) ; 
 struct device_node* FUNC4 (struct pci_dev*) ; 
 int FUNC5 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC6(struct pasemi_mac *mac)
{
	struct pci_dev *pdev = mac->pdev;
	struct device_node *dn = FUNC4(pdev);
	int len;
	const u8 *maddr;
	u8 addr[6];

	if (!dn) {
		FUNC0(&pdev->dev,
			  "No device node for mac, not configuring\n");
		return -ENOENT;
	}

	maddr = FUNC3(dn, "local-mac-address", &len);

	if (maddr && len == 6) {
		FUNC2(mac->mac_addr, maddr, 6);
		return 0;
	}

	/* Some old versions of firmware mistakenly uses mac-address
	 * (and as a string) instead of a byte array in local-mac-address.
	 */

	if (maddr == NULL)
		maddr = FUNC3(dn, "mac-address", NULL);

	if (maddr == NULL) {
		FUNC1(&pdev->dev,
			 "no mac address in device tree, not configuring\n");
		return -ENOENT;
	}

	if (FUNC5(maddr, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &addr[0],
		   &addr[1], &addr[2], &addr[3], &addr[4], &addr[5]) != 6) {
		FUNC1(&pdev->dev,
			 "can't parse mac address, not configuring\n");
		return -EINVAL;
	}

	FUNC2(mac->mac_addr, addr, 6);

	return 0;
}