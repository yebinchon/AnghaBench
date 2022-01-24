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
struct vxlan_sock {int /*<<< orphan*/  del_work; int /*<<< orphan*/  hlist; int /*<<< orphan*/  refcnt; TYPE_1__* sock; } ;
struct vxlan_net {int /*<<< orphan*/  sock_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vxlan_net* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vxlan_net_id ; 
 int /*<<< orphan*/  vxlan_wq ; 

void FUNC7(struct vxlan_sock *vs)
{
	struct vxlan_net *vn = FUNC2(FUNC4(vs->sock->sk), vxlan_net_id);

	if (!FUNC0(&vs->refcnt))
		return;

	FUNC5(&vn->sock_lock);
	FUNC1(&vs->hlist);
	FUNC6(&vn->sock_lock);

	FUNC3(vxlan_wq, &vs->del_work);
}