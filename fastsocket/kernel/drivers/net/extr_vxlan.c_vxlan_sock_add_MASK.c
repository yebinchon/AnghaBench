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
typedef  int /*<<< orphan*/  vxlan_rcv_t ;
struct vxlan_sock {int /*<<< orphan*/  refcnt; int /*<<< orphan*/ * rcv; } ;
struct vxlan_net {int /*<<< orphan*/  sock_lock; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct vxlan_sock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vxlan_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct vxlan_sock* FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlan_net_id ; 
 struct vxlan_sock* FUNC7 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 

struct vxlan_sock *FUNC8(struct net *net, __be16 port,
				  vxlan_rcv_t *rcv, void *data,
				  bool no_share)
{
	struct vxlan_net *vn = FUNC3(net, vxlan_net_id);
	struct vxlan_sock *vs;

	vs = FUNC7(net, port, rcv, data);
	if (!FUNC1(vs))
		return vs;

	if (no_share)	/* Return error if sharing is not allowed. */
		return vs;

	FUNC4(&vn->sock_lock);
	vs = FUNC6(net, port);
	if (vs) {
		if (vs->rcv == rcv)
			FUNC2(&vs->refcnt);
		else
			vs = FUNC0(-EBUSY);
	}
	FUNC5(&vn->sock_lock);

	if (!vs)
		vs = FUNC0(-EINVAL);

	return vs;
}