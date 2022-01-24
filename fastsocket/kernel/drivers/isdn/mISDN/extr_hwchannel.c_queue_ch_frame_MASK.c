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
typedef  int /*<<< orphan*/  u_int ;
struct sk_buff {int dummy; } ;
struct mISDNhead {int id; int /*<<< orphan*/  prim; } ;
struct mISDNchannel {scalar_t__ peer; int /*<<< orphan*/  (* recv ) (scalar_t__,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct mISDNchannel*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct mISDNhead* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct sk_buff*) ; 

void
FUNC4(struct mISDNchannel *ch, u_int pr, int id, struct sk_buff *skb)
{
	struct mISDNhead *hh;

	if (!skb) {
		FUNC0(ch, pr, id, 0, NULL, GFP_ATOMIC);
	} else {
		if (ch->peer) {
			hh = FUNC2(skb);
			hh->prim = pr;
			hh->id = id;
			if (!ch->recv(ch->peer, skb))
				return;
		}
		FUNC1(skb);
	}
}