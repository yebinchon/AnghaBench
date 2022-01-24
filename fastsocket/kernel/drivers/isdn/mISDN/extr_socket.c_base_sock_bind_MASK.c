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
struct sockaddr_mISDN {scalar_t__ family; int /*<<< orphan*/  dev; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_state; } ;
struct TYPE_2__ {scalar_t__ dev; } ;

/* Variables and functions */
 scalar_t__ AF_ISDN ; 
 int EALREADY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MISDN_BOUND ; 
 TYPE_1__* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int
FUNC4(struct socket *sock, struct sockaddr *addr, int addr_len)
{
	struct sockaddr_mISDN *maddr = (struct sockaddr_mISDN *) addr;
	struct sock *sk = sock->sk;
	int err = 0;

	if (!maddr || maddr->family != AF_ISDN)
		return -EINVAL;

	FUNC2(sk);

	if (FUNC0(sk)->dev) {
		err = -EALREADY;
		goto done;
	}

	FUNC0(sk)->dev = FUNC1(maddr->dev);
	if (!FUNC0(sk)->dev) {
		err = -ENODEV;
		goto done;
	}
	sk->sk_state = MISDN_BOUND;

done:
	FUNC3(sk);
	return err;
}