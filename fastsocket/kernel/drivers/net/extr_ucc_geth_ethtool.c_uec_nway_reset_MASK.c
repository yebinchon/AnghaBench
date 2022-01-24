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
struct ucc_geth_private {int /*<<< orphan*/  phydev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct ucc_geth_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev)
{
	struct ucc_geth_private *ugeth = FUNC0(netdev);

	return FUNC1(ugeth->phydev);
}