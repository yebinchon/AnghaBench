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
typedef  int /*<<< orphan*/  u16 ;
struct udphdr {int /*<<< orphan*/  check; int /*<<< orphan*/  len; } ;
struct sock {scalar_t__ sk_no_check; } ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  csum; } ;
struct inet_sock {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 struct udphdr* FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC8(struct sock *sk,
					       struct sk_buff *skb)
{
	struct udphdr *uh = FUNC7(skb);
	u16 ulen = FUNC5(uh->len);
	struct inet_sock *inet;
	__wsum psum;

	if (sk->sk_no_check || FUNC6(skb) || !uh->check)
		return 0;

	inet = FUNC4(sk);
	psum = FUNC3(inet->saddr, inet->daddr, ulen,
				  IPPROTO_UDP, 0);

	if ((skb->ip_summed == CHECKSUM_COMPLETE) &&
	    !FUNC2(FUNC1(psum, skb->csum)))
		return 0;

	skb->csum = psum;

	return FUNC0(skb);
}