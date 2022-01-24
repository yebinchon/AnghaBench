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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct pppol2tp_tunnel {int /*<<< orphan*/  name; int /*<<< orphan*/  debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  PPPOL2TP_MSG_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sock*,struct sk_buff*) ; 
 struct pppol2tp_tunnel* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *skb)
{
	struct pppol2tp_tunnel *tunnel;

	tunnel = FUNC2(sk);
	if (tunnel == NULL)
		goto pass_up;

	FUNC0(tunnel->debug, PPPOL2TP_MSG_DATA, KERN_DEBUG,
	       "%s: received %d bytes\n", tunnel->name, skb->len);

	if (FUNC1(sk, skb))
		goto pass_up_put;

	FUNC3(sk);
	return 0;

pass_up_put:
	FUNC3(sk);
pass_up:
	return 1;
}