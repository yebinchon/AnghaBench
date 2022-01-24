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
struct vxlan_fdb {int /*<<< orphan*/  rcu; int /*<<< orphan*/  hlist; int /*<<< orphan*/  eth_addr; } ;
struct vxlan_dev {int /*<<< orphan*/  addrcnt; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTM_DELNEIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlan_fdb_free ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_dev*,struct vxlan_fdb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vxlan_dev *vxlan, struct vxlan_fdb *f)
{
	FUNC2(vxlan->dev,
		    "delete %pM\n", f->eth_addr);

	--vxlan->addrcnt;
	FUNC3(vxlan, f, RTM_DELNEIGH);

	FUNC1(&f->hlist);
	FUNC0(&f->rcu, vxlan_fdb_free);
}