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
struct vxlan_sock {int dummy; } ;
struct vxlan_dev {int /*<<< orphan*/  stats; struct vxlan_sock* vn_sock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vxlan_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_sock*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct vxlan_dev *vxlan = FUNC1(dev);
	struct vxlan_sock *vs = vxlan->vn_sock;

	FUNC2(vxlan);

	if (vs)
		FUNC3(vs);
	FUNC0(vxlan->stats);
}