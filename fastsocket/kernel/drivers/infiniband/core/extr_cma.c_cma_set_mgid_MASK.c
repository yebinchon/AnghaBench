#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
struct TYPE_11__ {int /*<<< orphan*/ * s6_addr32; } ;
struct sockaddr_in6 {TYPE_5__ sin6_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; } ;
struct sockaddr_ib {TYPE_5__ sib_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rdma_dev_addr {int /*<<< orphan*/  broadcast; } ;
struct TYPE_7__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_8__ {TYPE_1__ addr; } ;
struct TYPE_10__ {scalar_t__ ps; TYPE_2__ route; } ;
struct rdma_id_private {TYPE_4__ id; } ;

/* Variables and functions */
 scalar_t__ AF_IB ; 
 scalar_t__ AF_INET6 ; 
 int MAX_ADDR_LEN ; 
 scalar_t__ RDMA_PS_UDP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (union ib_gid*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC5 (union ib_gid*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct rdma_id_private *id_priv,
			 struct sockaddr *addr, union ib_gid *mgid)
{
	unsigned char mc_map[MAX_ADDR_LEN];
	struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
	struct sockaddr_in *sin = (struct sockaddr_in *) addr;
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *) addr;

	if (FUNC1(addr)) {
		FUNC5(mgid, 0, sizeof *mgid);
	} else if ((addr->sa_family == AF_INET6) &&
		   ((FUNC0(sin6->sin6_addr.s6_addr32[0]) & 0xFFF0FFFF) ==
								 0xFF10A01B)) {
		/* IPv6 address is an SA assigned MGID. */
		FUNC4(mgid, &sin6->sin6_addr, sizeof *mgid);
	} else if (addr->sa_family == AF_IB) {
		FUNC4(mgid, &((struct sockaddr_ib *) addr)->sib_addr, sizeof *mgid);
	} else if (addr->sa_family == AF_INET6) {
		FUNC3(&sin6->sin6_addr, dev_addr->broadcast, mc_map);
		if (id_priv->id.ps == RDMA_PS_UDP)
			mc_map[7] = 0x01;	/* Use RDMA CM signature */
		*mgid = *(union ib_gid *) (mc_map + 4);
	} else {
		FUNC2(sin->sin_addr.s_addr, dev_addr->broadcast, mc_map);
		if (id_priv->id.ps == RDMA_PS_UDP)
			mc_map[7] = 0x01;	/* Use RDMA CM signature */
		*mgid = *(union ib_gid *) (mc_map + 4);
	}
}