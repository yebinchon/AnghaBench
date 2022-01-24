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
struct socket {struct sock* sk; } ;
struct sock {int sk_state; int /*<<< orphan*/  sk_priority; } ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  priority; struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  remote; } ;
struct pppox_sock {TYPE_1__ pppoe_pa; struct net_device* pppoe_dev; int /*<<< orphan*/  num; } ;
struct pppoe_hdr {int ver; int type; int /*<<< orphan*/  length; int /*<<< orphan*/ * tag; int /*<<< orphan*/  sid; scalar_t__ code; } ;
struct net_device {size_t mtu; size_t hard_header_len; } ;
struct msghdr {int /*<<< orphan*/  msg_iov; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  ETH_P_PPP_SES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PPPOX_CONNECTED ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct pppoe_hdr*,struct pppoe_hdr*,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,size_t) ; 
 struct pppox_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC14 (struct sock*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct kiocb *iocb, struct socket *sock,
		  struct msghdr *m, size_t total_len)
{
	struct sk_buff *skb;
	struct sock *sk = sock->sk;
	struct pppox_sock *po = FUNC8(sk);
	int error;
	struct pppoe_hdr hdr;
	struct pppoe_hdr *ph;
	struct net_device *dev;
	char *start;

	FUNC5(sk);
	if (FUNC13(sk, SOCK_DEAD) || !(sk->sk_state & PPPOX_CONNECTED)) {
		error = -ENOTCONN;
		goto end;
	}

	hdr.ver = 1;
	hdr.type = 1;
	hdr.code = 0;
	hdr.sid = po->num;

	dev = po->pppoe_dev;

	error = -EMSGSIZE;
	if (total_len > (dev->mtu + dev->hard_header_len))
		goto end;


	skb = FUNC14(sk, total_len + dev->hard_header_len + 32,
			   0, GFP_KERNEL);
	if (!skb) {
		error = -ENOMEM;
		goto end;
	}

	/* Reserve space for headers. */
	FUNC11(skb, dev->hard_header_len);
	FUNC12(skb);

	skb->dev = dev;

	skb->priority = sk->sk_priority;
	skb->protocol = FUNC0(ETH_P_PPP_SES);

	ph = (struct pppoe_hdr *)FUNC10(skb, total_len + sizeof(struct pppoe_hdr));
	start = (char *)&ph->tag[0];

	error = FUNC7(start, m->msg_iov, total_len);
	if (error < 0) {
		FUNC4(skb);
		goto end;
	}

	error = total_len;
	FUNC1(skb, dev, ETH_P_PPP_SES,
			po->pppoe_pa.remote, NULL, total_len);

	FUNC6(ph, &hdr, sizeof(struct pppoe_hdr));

	ph->length = FUNC3(total_len);

	FUNC2(skb);

end:
	FUNC9(sk);
	return error;
}