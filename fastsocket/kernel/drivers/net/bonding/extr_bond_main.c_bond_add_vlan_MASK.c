#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vlan_entry {unsigned short vlan_id; int /*<<< orphan*/  vlan_list; } ;
struct bonding {TYPE_1__* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  vlan_list; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vlan_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct bonding *bond, unsigned short vlan_id)
{
	struct vlan_entry *vlan;

	FUNC3("bond: %s, vlan id %d\n",
		(bond ? bond->dev->name : "None"), vlan_id);

	vlan = FUNC1(sizeof(struct vlan_entry), GFP_KERNEL);
	if (!vlan)
		return -ENOMEM;

	FUNC0(&vlan->vlan_list);
	vlan->vlan_id = vlan_id;

	FUNC4(&bond->lock);

	FUNC2(&vlan->vlan_list, &bond->vlan_list);

	FUNC5(&bond->lock);

	FUNC3("added VLAN ID %d on bond %s\n", vlan_id, bond->dev->name);

	return 0;
}