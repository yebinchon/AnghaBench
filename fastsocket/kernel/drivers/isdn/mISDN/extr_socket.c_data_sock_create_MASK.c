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
struct socket {scalar_t__ type; int /*<<< orphan*/  state; int /*<<< orphan*/ * ops; } ;
struct sock {int sk_protocol; int /*<<< orphan*/  sk_state; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MISDN_OPEN ; 
 int /*<<< orphan*/  PF_ISDN ; 
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  data_sock_ops ; 
 int /*<<< orphan*/  data_sockets ; 
 int /*<<< orphan*/  mISDN_proto ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sock*) ; 
 struct sock* FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct net *net, struct socket *sock, int protocol)
{
	struct sock *sk;

	if (sock->type != SOCK_DGRAM)
		return -ESOCKTNOSUPPORT;

	sk = FUNC1(net, PF_ISDN, GFP_KERNEL, &mISDN_proto);
	if (!sk)
		return -ENOMEM;

	FUNC2(sock, sk);

	sock->ops = &data_sock_ops;
	sock->state = SS_UNCONNECTED;
	FUNC3(sk, SOCK_ZAPPED);

	sk->sk_protocol = protocol;
	sk->sk_state    = MISDN_OPEN;
	FUNC0(&data_sockets, sk);

	return 0;
}