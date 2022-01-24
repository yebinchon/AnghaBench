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
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  perm_addr; } ;
struct bnad {int /*<<< orphan*/  perm_addr; struct net_device* netdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bnad *bnad)
{
	struct net_device *netdev = bnad->netdev;

	FUNC1(netdev->perm_addr, &bnad->perm_addr, netdev->addr_len);
	if (FUNC0(netdev->dev_addr))
		FUNC1(netdev->dev_addr, &bnad->perm_addr, netdev->addr_len);
}