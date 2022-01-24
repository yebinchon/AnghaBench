#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xen_netif_extra_info {int flags; int type; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ rsp_cons; } ;
struct netfront_info {TYPE_2__ rx; TYPE_1__* netdev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;
struct TYPE_3__ {struct device dev; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int EBADR ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__) ; 
 int XEN_NETIF_EXTRA_FLAG_MORE ; 
 int XEN_NETIF_EXTRA_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct xen_netif_extra_info*,struct xen_netif_extra_info*,int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_info*,scalar_t__) ; 
 struct sk_buff* FUNC6 (struct netfront_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct netfront_info*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct netfront_info *np,
			     struct xen_netif_extra_info *extras,
			     RING_IDX rp)

{
	struct xen_netif_extra_info *extra;
	struct device *dev = &np->netdev->dev;
	RING_IDX cons = np->rx.rsp_cons;
	int err = 0;

	do {
		struct sk_buff *skb;
		grant_ref_t ref;

		if (FUNC4(cons + 1 == rp)) {
			if (FUNC3())
				FUNC1(dev, "Missing extra info\n");
			err = -EBADR;
			break;
		}

		extra = (struct xen_netif_extra_info *)
			FUNC0(&np->rx, ++cons);

		if (FUNC4(!extra->type ||
			     extra->type >= XEN_NETIF_EXTRA_TYPE_MAX)) {
			if (FUNC3())
				FUNC1(dev, "Invalid extra type: %d\n",
					extra->type);
			err = -EINVAL;
		} else {
			FUNC2(&extras[extra->type - 1], extra,
			       sizeof(*extra));
		}

		skb = FUNC6(np, cons);
		ref = FUNC5(np, cons);
		FUNC7(np, skb, ref);
	} while (extra->flags & XEN_NETIF_EXTRA_FLAG_MORE);

	np->rx.rsp_cons = cons;
	return err;
}