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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct macvlan_dev {int /*<<< orphan*/  lowerdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct macvlan_dev* FUNC1 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC2(struct net_device *dev)
{
	const struct macvlan_dev *vlan = FUNC1(dev);
	return FUNC0(vlan->lowerdev);
}