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
struct sk_buff {int dummy; } ;
struct IsdnCardState {int /*<<< orphan*/  HW_Flags; int /*<<< orphan*/  rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_RCVBUFREADY ; 
 int /*<<< orphan*/  FLG_LOCK_ATOMIC ; 
 int /*<<< orphan*/  HFCSX_SEL_D_RX ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*) ; 
 struct sk_buff* FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int
FUNC6(struct IsdnCardState *cs)
{
	struct sk_buff *skb;
	int count = 5;

	if (FUNC5(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
		FUNC0(cs, "rec_dmsg blocked");
		return (1);
	}

	do {
	  skb = FUNC1(cs, HFCSX_SEL_D_RX, 0);
	  if (skb) {
	    FUNC3(&cs->rq, skb);
	    FUNC2(cs, D_RCVBUFREADY);
	  }
	} while (--count && skb);

	FUNC4(FLG_LOCK_ATOMIC, &cs->HW_Flags);
	return (1);
}