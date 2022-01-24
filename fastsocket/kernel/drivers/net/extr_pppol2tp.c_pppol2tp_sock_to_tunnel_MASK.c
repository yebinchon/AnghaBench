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
struct sock {scalar_t__ sk_user_data; } ;
struct pppol2tp_tunnel {scalar_t__ magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ L2TP_TUNNEL_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static inline struct pppol2tp_tunnel *FUNC3(struct sock *sk)
{
	struct pppol2tp_tunnel *tunnel;

	if (sk == NULL)
		return NULL;

	FUNC1(sk);
	tunnel = (struct pppol2tp_tunnel *)(sk->sk_user_data);
	if (tunnel == NULL) {
		FUNC2(sk);
		goto out;
	}

	FUNC0(tunnel->magic != L2TP_TUNNEL_MAGIC);
out:
	return tunnel;
}