#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  neighbour; } ;
struct TYPE_14__ {TYPE_5__ dst; } ;
struct rtable {TYPE_6__ u; TYPE_4__* idev; int /*<<< orphan*/  rt_gateway; void* rt_src; } ;
struct rdma_dev_addr {int /*<<< orphan*/  src_dev_addr; int /*<<< orphan*/  dst_dev_addr; int /*<<< orphan*/  bound_dev_if; } ;
struct neighbour {int nud_state; int /*<<< orphan*/ * ha; TYPE_7__* dev; } ;
struct TYPE_9__ {void* saddr; void* daddr; } ;
struct TYPE_10__ {TYPE_1__ ip4_u; } ;
struct flowi {int /*<<< orphan*/  oif; TYPE_2__ nl_u; } ;
typedef  void* __be32 ;
struct TYPE_15__ {int flags; } ;
struct TYPE_12__ {TYPE_7__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int ENODATA ; 
 int IFF_LOOPBACK ; 
 int IFF_NOARP ; 
 int /*<<< orphan*/  MAX_ADDR_LEN ; 
 int NUD_VALID ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC0 (int /*<<< orphan*/ *,struct rtable**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct neighbour* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (struct neighbour*) ; 
 int FUNC7 (struct rdma_dev_addr*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sockaddr*,struct rdma_dev_addr*) ; 

__attribute__((used)) static int FUNC9(struct sockaddr_in *src_in,
			 struct sockaddr_in *dst_in,
			 struct rdma_dev_addr *addr)
{
	__be32 src_ip = src_in->sin_addr.s_addr;
	__be32 dst_ip = dst_in->sin_addr.s_addr;
	struct flowi fl;
	struct rtable *rt;
	struct neighbour *neigh;
	int ret;

	FUNC3(&fl, 0, sizeof fl);
	fl.nl_u.ip4_u.daddr = dst_ip;
	fl.nl_u.ip4_u.saddr = src_ip;
	fl.oif = addr->bound_dev_if;

	ret = FUNC0(&init_net, &rt, &fl);
	if (ret)
		goto out;

	src_in->sin_family = AF_INET;
	src_in->sin_addr.s_addr = rt->rt_src;

	if (rt->idev->dev->flags & IFF_LOOPBACK) {
		ret = FUNC8((struct sockaddr *) dst_in, addr);
		if (!ret)
			FUNC2(addr->dst_dev_addr, addr->src_dev_addr, MAX_ADDR_LEN);
		goto put;
	}

	/* If the device does ARP internally, return 'done' */
	if (rt->idev->dev->flags & IFF_NOARP) {
		FUNC7(addr, rt->idev->dev, NULL);
		goto put;
	}

	neigh = FUNC5(&arp_tbl, &rt->rt_gateway, rt->idev->dev);
	if (!neigh || !(neigh->nud_state & NUD_VALID)) {
		FUNC4(rt->u.dst.neighbour, NULL);
		ret = -ENODATA;
		if (neigh)
			goto release;
		goto put;
	}

	ret = FUNC7(addr, neigh->dev, neigh->ha);
release:
	FUNC6(neigh);
put:
	FUNC1(rt);
out:
	return ret;
}