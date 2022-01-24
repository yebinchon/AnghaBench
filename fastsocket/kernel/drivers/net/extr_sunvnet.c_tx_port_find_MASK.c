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
struct vnet_port {int dummy; } ;
struct vnet {int /*<<< orphan*/  lock; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 struct vnet_port* FUNC0 (struct vnet*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct vnet_port *FUNC3(struct vnet *vp, struct sk_buff *skb)
{
	struct vnet_port *ret;
	unsigned long flags;

	FUNC1(&vp->lock, flags);
	ret = FUNC0(vp, skb);
	FUNC2(&vp->lock, flags);

	return ret;
}