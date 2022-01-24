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
struct nic {int /*<<< orphan*/  netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nic*) ; 
 int /*<<< orphan*/  ifup ; 
 struct nic* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev)
{
	struct nic *nic = FUNC1(netdev);
	int err = 0;

	FUNC2(netdev);
	if ((err = FUNC0(nic)))
		FUNC3(nic, ifup, nic->netdev, "Cannot open interface, aborting\n");
	return err;
}