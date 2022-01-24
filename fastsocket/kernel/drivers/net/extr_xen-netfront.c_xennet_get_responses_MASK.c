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
struct xen_netif_rx_response {scalar_t__ status; int flags; scalar_t__ offset; int /*<<< orphan*/  id; } ;
struct xen_netif_extra_info {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct netfront_rx_info {struct xen_netif_extra_info* extras; struct xen_netif_rx_response rx; } ;
struct TYPE_4__ {scalar_t__ rsp_cons; } ;
struct netfront_info {TYPE_2__ rx; int /*<<< orphan*/  gref_rx_head; TYPE_1__* netdev; } ;
struct device {int dummy; } ;
typedef  scalar_t__ grant_ref_t ;
struct TYPE_3__ {struct device dev; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E2BIG ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ GRANT_INVALID_REF ; 
 int MAX_SKB_FRAGS ; 
 int NETRXF_extra_info ; 
 int NETRXF_more_data ; 
 scalar_t__ PAGE_SIZE ; 
 struct xen_netif_rx_response* FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ RX_COPY_THRESHOLD ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 unsigned long FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct netfront_info*,struct xen_netif_extra_info*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct netfront_info*,scalar_t__) ; 
 struct sk_buff* FUNC10 (struct netfront_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct netfront_info*,struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct netfront_info *np,
				struct netfront_rx_info *rinfo, RING_IDX rp,
				struct sk_buff_head *list)
{
	struct xen_netif_rx_response *rx = &rinfo->rx;
	struct xen_netif_extra_info *extras = rinfo->extras;
	struct device *dev = &np->netdev->dev;
	RING_IDX cons = np->rx.rsp_cons;
	struct sk_buff *skb = FUNC10(np, cons);
	grant_ref_t ref = FUNC9(np, cons);
	int max = MAX_SKB_FRAGS + (rx->status <= RX_COPY_THRESHOLD);
	int frags = 1;
	int err = 0;
	unsigned long ret;

	if (rx->flags & NETRXF_extra_info) {
		err = FUNC8(np, extras, rp);
		cons = np->rx.rsp_cons;
	}

	for (;;) {
		if (FUNC7(rx->status < 0 ||
			     rx->offset + rx->status > PAGE_SIZE)) {
			if (FUNC6())
				FUNC3(dev, "rx->offset: %x, size: %u\n",
					 rx->offset, rx->status);
			FUNC11(np, skb, ref);
			err = -EINVAL;
			goto next;
		}

		/*
		 * This definitely indicates a bug, either in this driver or in
		 * the backend driver. In future this should flag the bad
		 * situation to the system controller to reboot the backed.
		 */
		if (ref == GRANT_INVALID_REF) {
			if (FUNC6())
				FUNC3(dev, "Bad rx response id %d.\n",
					 rx->id);
			err = -EINVAL;
			goto next;
		}

		ret = FUNC4(ref, 0);
		FUNC0(!ret);

		FUNC5(&np->gref_rx_head, ref);

		FUNC2(list, skb);

next:
		if (!(rx->flags & NETRXF_more_data))
			break;

		if (cons + frags == rp) {
			if (FUNC6())
				FUNC3(dev, "Need more frags\n");
			err = -ENOENT;
			break;
		}

		rx = FUNC1(&np->rx, cons + frags);
		skb = FUNC10(np, cons + frags);
		ref = FUNC9(np, cons + frags);
		frags++;
	}

	if (FUNC7(frags > max)) {
		if (FUNC6())
			FUNC3(dev, "Too many frags\n");
		err = -E2BIG;
	}

	if (FUNC7(err))
		np->rx.rsp_cons = cons + frags;

	return err;
}