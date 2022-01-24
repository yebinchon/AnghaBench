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
typedef  int u_char ;
struct sk_buff {int dummy; } ;
struct l3_process {int /*<<< orphan*/  st; int /*<<< orphan*/  callref; } ;

/* Variables and functions */
 int DL_DATA ; 
 int /*<<< orphan*/  IE_CAUSE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int REQUEST ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC5(struct l3_process *pc, u_char mt, u_char cause)
{
	struct sk_buff *skb;
	u_char tmp[16];
	u_char *p = tmp;
	int l;

	FUNC0(p, pc->callref, mt);
	*p++ = IE_CAUSE;
	*p++ = 0x2;
	*p++ = 0x80;
	*p++ = cause | 0x80;

	l = p - tmp;
	if (!(skb = FUNC1(l)))
		return;
	FUNC3(FUNC4(skb, l), tmp, l);
	FUNC2(pc->st, DL_DATA | REQUEST, skb);
}