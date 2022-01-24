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
typedef  int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int bchannel; } ;
struct l3_process {int /*<<< orphan*/  st; int /*<<< orphan*/  callref; TYPE_1__ para; } ;

/* Variables and functions */
 int DL_DATA ; 
 int /*<<< orphan*/  IE_CHANNEL_ID ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int REQUEST ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC5(struct l3_process *pc, u_char mt)
/* sends an l3 messages plus channel id -  added GE 05/09/00 */
{
	struct sk_buff *skb;
	u_char tmp[16];
	u_char *p = tmp;
	u_char chid;

	chid = (u_char)(pc->para.bchannel & 0x03) | 0x88;
	FUNC0(p, pc->callref, mt);
	*p++ = IE_CHANNEL_ID;
	*p++ = 0x01;
	*p++ = chid;

	if (!(skb = FUNC1(7)))
		return;
	FUNC3(FUNC4(skb, 7), tmp, 7);
	FUNC2(pc->st, DL_DATA | REQUEST, skb);
}