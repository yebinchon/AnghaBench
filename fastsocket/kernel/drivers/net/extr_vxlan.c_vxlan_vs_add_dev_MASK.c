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
struct TYPE_2__ {int /*<<< orphan*/  remote_vni; } ;
struct vxlan_dev {int /*<<< orphan*/  hlist; struct vxlan_sock* vn_sock; TYPE_1__ default_dst; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vxlan_sock *vs, struct vxlan_dev *vxlan)
{
	__u32 vni = vxlan->default_dst.remote_vni;

	vxlan->vn_sock = vs;
	FUNC0(&vxlan->hlist, FUNC1(vs, vni));
}