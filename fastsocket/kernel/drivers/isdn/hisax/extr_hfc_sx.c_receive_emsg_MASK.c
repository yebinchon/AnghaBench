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
struct IsdnCardState {int debug; int /*<<< orphan*/  HW_Flags; scalar_t__* dlog; } ;

/* Variables and functions */
 int DEB_DLOG_HEX ; 
 int /*<<< orphan*/  FLG_LOCK_ATOMIC ; 
 int /*<<< orphan*/  HFCSX_SEL_B2_RX ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*,char*,...) ; 
 int MAX_DLOG_SPACE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct IsdnCardState*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct IsdnCardState *cs)
{
	int count = 5;
	u_char *ptr;
	struct sk_buff *skb;

	if (FUNC6(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
		FUNC2(cs, "echo_rec_data blocked");
		return;
	}
	do {
	  skb = FUNC4(cs, HFCSX_SEL_B2_RX, 0);
	  if (skb) {
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
		FUNC0(cs, "LogEcho: ", "warning Frame too big (%d)", skb->len);
	    }
	    FUNC3(skb);
	  }
	} while (--count && skb);

	FUNC5(FLG_LOCK_ATOMIC, &cs->HW_Flags);
	return;
}