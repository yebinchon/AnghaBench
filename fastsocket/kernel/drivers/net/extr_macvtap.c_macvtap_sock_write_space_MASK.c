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
struct sock {scalar_t__ sk_sleep; TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int POLLOUT ; 
 int POLLWRBAND ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  SOCK_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	if (!FUNC0(sk) ||
	    !FUNC1(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags))
		return;

	if (sk->sk_sleep && FUNC2(sk->sk_sleep))
		FUNC3(sk->sk_sleep, POLLOUT | POLLWRNORM | POLLWRBAND);
}