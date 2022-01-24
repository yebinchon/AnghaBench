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
struct temac_local {int /*<<< orphan*/  indirect_mutex; } ;
struct net_device {int* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  XTE_UAW0_OFFSET ; 
 int /*<<< orphan*/  XTE_UAW1_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct temac_local* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (struct temac_local*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev, void *address)
{
	struct temac_local *lp = FUNC4(ndev);

	if (address)
		FUNC1(ndev->dev_addr, address, ETH_ALEN);

	if (!FUNC0(ndev->dev_addr))
		FUNC5(ndev->dev_addr);

	/* set up unicast MAC address filter set its mac address */
	FUNC2(&lp->indirect_mutex);
	FUNC6(lp, XTE_UAW0_OFFSET,
			     (ndev->dev_addr[0]) |
			     (ndev->dev_addr[1] << 8) |
			     (ndev->dev_addr[2] << 16) |
			     (ndev->dev_addr[3] << 24));
	/* There are reserved bits in EUAW1
	 * so don't affect them Set MAC bits [47:32] in EUAW1 */
	FUNC6(lp, XTE_UAW1_OFFSET,
			     (ndev->dev_addr[4] & 0x000000ff) |
			     (ndev->dev_addr[5] << 8));
	FUNC3(&lp->indirect_mutex);

	return 0;
}