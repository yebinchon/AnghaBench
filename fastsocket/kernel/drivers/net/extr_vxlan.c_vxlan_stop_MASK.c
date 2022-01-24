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
struct vxlan_sock {int dummy; } ;
struct vxlan_net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  remote_ip; } ;
struct vxlan_dev {int /*<<< orphan*/  age_timer; int /*<<< orphan*/  igmp_leave; TYPE_1__ default_dst; struct vxlan_sock* vn_sock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct vxlan_net* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vxlan_dev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vxlan_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct vxlan_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlan_net_id ; 
 int /*<<< orphan*/  FUNC10 (struct vxlan_sock*) ; 
 int /*<<< orphan*/  vxlan_wq ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct vxlan_net *vn = FUNC4(FUNC3(dev), vxlan_net_id);
	struct vxlan_dev *vxlan = FUNC5(dev);
	struct vxlan_sock *vs = vxlan->vn_sock;

	if (vs && FUNC0(FUNC6(vxlan->default_dst.remote_ip)) &&
	    ! FUNC9(vn, vxlan->default_dst.remote_ip)) {
		FUNC10(vs);
		FUNC2(dev);
		FUNC7(vxlan_wq, &vxlan->igmp_leave);
	}

	FUNC1(&vxlan->age_timer);

	FUNC8(vxlan);

	return 0;
}