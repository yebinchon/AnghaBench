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
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int dummy; } ;
struct l3_process {int /*<<< orphan*/  st; int /*<<< orphan*/  callref; } ;

/* Variables and functions */
 int DL_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REQUEST ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC4(struct l3_process *pc, u_char mt, u_char pd)
{
	struct sk_buff *skb;
	u_char *p;

	if (!(skb = FUNC1(4)))
		return;
	p = FUNC3(skb, 4);
	FUNC0(p, pc->callref, mt, pd);
	FUNC2(pc->st, DL_DATA | REQUEST, skb);
}