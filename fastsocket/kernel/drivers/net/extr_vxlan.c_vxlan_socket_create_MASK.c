#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vxlan_rcv_t ;
typedef  int /*<<< orphan*/  vxlan_addr ;
struct vxlan_sock {int /*<<< orphan*/  hlist; void* data; int /*<<< orphan*/ * rcv; int /*<<< orphan*/  refcnt; TYPE_3__* sock; int /*<<< orphan*/  del_work; int /*<<< orphan*/ * vni_list; } ;
struct vxlan_net {int /*<<< orphan*/  sock_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_9__ {scalar_t__ mc_loop; } ;
struct TYPE_8__ {struct sock* sk; } ;
struct TYPE_7__ {int encap_type; int /*<<< orphan*/  encap_rcv; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int ENOMEM ; 
 struct vxlan_sock* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 unsigned int VNI_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (struct sock*) ; 
 int FUNC7 (TYPE_3__*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vxlan_sock*) ; 
 struct vxlan_sock* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct vxlan_net* FUNC10 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct net*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlan_del_work ; 
 int /*<<< orphan*/  vxlan_net_id ; 
 int /*<<< orphan*/  vxlan_udp_encap_recv ; 

__attribute__((used)) static struct vxlan_sock *FUNC20(struct net *net, __be16 port,
					      vxlan_rcv_t *rcv, void *data)
{
	struct vxlan_net *vn = FUNC10(net, vxlan_net_id);
	struct vxlan_sock *vs;
	struct sock *sk;
	struct sockaddr_in vxlan_addr = {
		.sin_family = AF_INET,
		.sin_addr.s_addr = FUNC5(INADDR_ANY),
		.sin_port = port,
	};
	int rc;
	unsigned int h;

	vs = FUNC9(sizeof(*vs), GFP_KERNEL);
	if (!vs) {
		FUNC12("memory alocation failure\n");
		return FUNC0(-ENOMEM);
	}

	for (h = 0; h < VNI_HASH_SIZE; ++h)
		FUNC1(&vs->vni_list[h]);

	FUNC2(&vs->del_work, vxlan_del_work);

	/* Create UDP socket for encapsulation receive. */
	rc = FUNC15(AF_INET, SOCK_DGRAM, IPPROTO_UDP, &vs->sock);
	if (rc < 0) {
		FUNC12("UDP socket create failed\n");
		FUNC8(vs);
		return FUNC0(rc);
	}

	/* Put in proper namespace */
	sk = vs->sock->sk;
	FUNC13(sk, net);

	rc = FUNC7(vs->sock, (struct sockaddr *) &vxlan_addr,
			 sizeof(vxlan_addr));
	if (rc < 0) {
		FUNC12("bind for UDP socket %pI4:%u (%d)\n",
			 &vxlan_addr.sin_addr, FUNC11(vxlan_addr.sin_port), rc);
		FUNC14(sk);
		FUNC8(vs);
		return FUNC0(rc);
	}
	FUNC3(&vs->refcnt, 1);
	vs->rcv = rcv;
	vs->data = data;

	/* Disable multicast loopback */
	FUNC6(sk)->mc_loop = 0;
	FUNC16(&vn->sock_lock);
	FUNC4(&vs->hlist, FUNC19(net, port));
	FUNC17(&vn->sock_lock);

	/* Mark socket as an encapsulation socket. */
	FUNC18(sk)->encap_type = 1;
	FUNC18(sk)->encap_rcv = vxlan_udp_encap_recv;
	return vs;
}