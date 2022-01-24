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
struct net_device {int dummy; } ;
struct bonding {int /*<<< orphan*/  bond_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bonding* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *bond_dev)
{
	struct bonding *bond = FUNC3(bond_dev);

	FUNC2(&bond->bond_list);

	FUNC1(bond);

	FUNC0(bond);
}