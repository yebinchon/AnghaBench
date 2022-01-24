#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct TYPE_8__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_4__ pppoe; } ;
struct sockaddr_pppox {scalar_t__ sa_protocol; TYPE_1__ sa_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct TYPE_7__ {int /*<<< orphan*/  remote; int /*<<< orphan*/  sid; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ops; struct sock* private; scalar_t__ mtu; scalar_t__ hdrlen; } ;
struct pppox_sock {struct net_device* pppoe_dev; int /*<<< orphan*/  num; int /*<<< orphan*/  pppoe_ifindex; TYPE_3__ pppoe_pa; TYPE_2__ chan; } ;
struct pppoe_net {int /*<<< orphan*/  hash_lock; } ;
struct pppoe_hdr {int dummy; } ;
struct pppoe_addr {int dummy; } ;
struct net_device {int flags; scalar_t__ mtu; scalar_t__ hard_header_len; int /*<<< orphan*/  ifindex; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EALREADY ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int IFF_UP ; 
 int PPPOX_CONNECTED ; 
 int PPPOX_DEAD ; 
 int PPPOX_NONE ; 
 scalar_t__ PX_PROTO_OE ; 
 int FUNC0 (struct pppoe_net*,struct pppox_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct pppoe_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  pppoe_chan_ops ; 
 struct pppoe_net* FUNC9 (struct net*) ; 
 struct pppox_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 scalar_t__ FUNC13 (struct pppox_sock*) ; 
 struct net* FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct socket *sock, struct sockaddr *uservaddr,
		  int sockaddr_len, int flags)
{
	struct sock *sk = sock->sk;
	struct sockaddr_pppox *sp = (struct sockaddr_pppox *)uservaddr;
	struct pppox_sock *po = FUNC10(sk);
	struct net_device *dev = NULL;
	struct pppoe_net *pn;
	struct net *net = NULL;
	int error;

	FUNC5(sk);

	error = -EINVAL;
	if (sp->sa_protocol != PX_PROTO_OE)
		goto end;

	/* Check for already bound sockets */
	error = -EBUSY;
	if ((sk->sk_state & PPPOX_CONNECTED) &&
	     FUNC15(sp->sa_addr.pppoe.sid))
		goto end;

	/* Check for already disconnected sockets, on attempts to disconnect */
	error = -EALREADY;
	if ((sk->sk_state & PPPOX_DEAD) &&
	     !FUNC15(sp->sa_addr.pppoe.sid))
		goto end;

	error = 0;

	/* Delete the old binding */
	if (FUNC15(po->pppoe_pa.sid)) {
		FUNC11(sk);
		pn = FUNC9(FUNC14(sk));
		FUNC1(pn, po->pppoe_pa.sid,
			    po->pppoe_pa.remote, po->pppoe_ifindex);
		if (po->pppoe_dev) {
			FUNC4(po->pppoe_dev);
			po->pppoe_dev = NULL;
		}

		FUNC7(FUNC13(po) + 1, 0,
		       sizeof(struct pppox_sock) - sizeof(struct sock));
		sk->sk_state = PPPOX_NONE;
	}

	/* Re-bind in session stage only */
	if (FUNC15(sp->sa_addr.pppoe.sid)) {
		error = -ENODEV;
		net = FUNC14(sk);
		dev = FUNC2(net, sp->sa_addr.pppoe.dev);
		if (!dev)
			goto err_put;

		po->pppoe_dev = dev;
		po->pppoe_ifindex = dev->ifindex;
		pn = FUNC9(net);
		if (!(dev->flags & IFF_UP)) {
			goto err_put;
		}

		FUNC6(&po->pppoe_pa,
		       &sp->sa_addr.pppoe,
		       sizeof(struct pppoe_addr));

		FUNC16(&pn->hash_lock);
		error = FUNC0(pn, po);
		FUNC17(&pn->hash_lock);
		if (error < 0)
			goto err_put;

		po->chan.hdrlen = (sizeof(struct pppoe_hdr) +
				   dev->hard_header_len);

		po->chan.mtu = dev->mtu - sizeof(struct pppoe_hdr);
		po->chan.private = sk;
		po->chan.ops = &pppoe_chan_ops;

		error = FUNC8(FUNC3(dev), &po->chan);
		if (error) {
			FUNC1(pn, po->pppoe_pa.sid,
				    po->pppoe_pa.remote, po->pppoe_ifindex);
			goto err_put;
		}

		sk->sk_state = PPPOX_CONNECTED;
	}

	po->num = sp->sa_addr.pppoe.sid;

end:
	FUNC12(sk);
	return error;
err_put:
	if (po->pppoe_dev) {
		FUNC4(po->pppoe_dev);
		po->pppoe_dev = NULL;
	}
	goto end;
}