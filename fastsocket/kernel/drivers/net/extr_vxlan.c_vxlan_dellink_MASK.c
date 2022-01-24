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
struct vxlan_net {int /*<<< orphan*/  sock_lock; } ;
struct vxlan_dev {int /*<<< orphan*/  next; int /*<<< orphan*/  hlist; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vxlan_net* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vxlan_dev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  vxlan_net_id ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct vxlan_net *vn = FUNC4(FUNC0(dev), vxlan_net_id);
	struct vxlan_dev *vxlan = FUNC5(dev);

	FUNC6(&vn->sock_lock);
	if (!FUNC2(&vxlan->hlist))
		FUNC1(&vxlan->hlist);
	FUNC7(&vn->sock_lock);

	FUNC3(&vxlan->next);
	FUNC8(dev);
}