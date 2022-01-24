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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct l3_process {int /*<<< orphan*/  callref; int /*<<< orphan*/  st; } ;

/* Variables and functions */
 int /*<<< orphan*/  IE_FACILITY ; 
 int FUNC0 (struct l3_process*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ie_FACILITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct l3_process*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct l3_process*,int) ; 

__attribute__((used)) static void
FUNC4(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb = arg;
	int ret;
	
	ret = FUNC0(pc, skb, ie_FACILITY);
	FUNC3(pc, ret);
 	  {
		u_char *p;
		if ((p = FUNC1(skb->data, skb->len, IE_FACILITY, 0)))
			FUNC2(pc->st, pc, pc->callref, p);
	}
}