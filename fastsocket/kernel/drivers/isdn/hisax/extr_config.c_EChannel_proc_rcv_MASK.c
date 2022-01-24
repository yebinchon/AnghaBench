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
typedef  scalar_t__ u_char ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct hisax_d_if {int /*<<< orphan*/  erq; struct IsdnCardState* cs; } ;
struct IsdnCardState {int debug; scalar_t__* dlog; } ;

/* Variables and functions */
 int DEB_DLOG_HEX ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*,char*,...) ; 
 int MAX_DLOG_SPACE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hisax_d_if *d_if)
{
	struct IsdnCardState *cs = d_if->cs;
	u_char *ptr;
	struct sk_buff *skb;

	while ((skb = FUNC3(&d_if->erq)) != NULL) {
		if (cs->debug & DEB_DLOG_HEX) {
			ptr = cs->dlog;
			if ((skb->len) < MAX_DLOG_SPACE / 3 - 10) {
				*ptr++ = 'E';
				*ptr++ = 'C';
				*ptr++ = 'H';
				*ptr++ = 'O';
				*ptr++ = ':';
				ptr += FUNC1(ptr, skb->data, skb->len);
				ptr--;
				*ptr++ = '\n';
				*ptr = 0;
				FUNC0(cs, NULL, cs->dlog);
			} else
				FUNC0(cs, "LogEcho: ",
						"warning Frame too big (%d)",
						skb->len);
		}
		FUNC2(skb);
	}
}