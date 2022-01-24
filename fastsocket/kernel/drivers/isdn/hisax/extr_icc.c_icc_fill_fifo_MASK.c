#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct IsdnCardState {int debug; int tx_cnt; char* dlog; TYPE_2__ dbusytimer; int /*<<< orphan*/  HW_Flags; int /*<<< orphan*/  (* writeisac ) (struct IsdnCardState*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* writeisacfifo ) (struct IsdnCardState*,int /*<<< orphan*/ *,int) ;TYPE_1__* tx_skb; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int DBUSY_TIMER_VALUE ; 
 int /*<<< orphan*/  FLG_DBUSY_TIMER ; 
 int HZ ; 
 int /*<<< orphan*/  ICC_CMDR ; 
 int L1_DEB_ISAC ; 
 int L1_DEB_ISAC_FIFO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct IsdnCardState*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct IsdnCardState *cs)
{
	int count, more;
	u_char *ptr;

	if ((cs->debug & L1_DEB_ISAC) && !(cs->debug & L1_DEB_ISAC_FIFO))
		FUNC2(cs, "icc_fill_fifo");

	if (!cs->tx_skb)
		return;

	count = cs->tx_skb->len;
	if (count <= 0)
		return;

	more = 0;
	if (count > 32) {
		more = !0;
		count = 32;
	}
	ptr = cs->tx_skb->data;
	FUNC5(cs->tx_skb, count);
	cs->tx_cnt += count;
	cs->writeisacfifo(cs, ptr, count);
	cs->writeisac(cs, ICC_CMDR, more ? 0x8 : 0xa);
	if (FUNC9(FLG_DBUSY_TIMER, &cs->HW_Flags)) {
		FUNC2(cs, "icc_fill_fifo dbusytimer running");
		FUNC3(&cs->dbusytimer);
	}
	FUNC4(&cs->dbusytimer);
	cs->dbusytimer.expires = jiffies + ((DBUSY_TIMER_VALUE * HZ)/1000);
	FUNC1(&cs->dbusytimer);
	if (cs->debug & L1_DEB_ISAC_FIFO) {
		char *t = cs->dlog;

		t += FUNC6(t, "icc_fill_fifo cnt %d", count);
		FUNC0(t, ptr, count);
		FUNC2(cs, cs->dlog);
	}
}