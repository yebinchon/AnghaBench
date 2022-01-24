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
typedef  int u_char ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct IsdnCardState {int debug; int tx_cnt; char* dlog; TYPE_2__ dbusytimer; int /*<<< orphan*/  HW_Flags; int /*<<< orphan*/  (* writeisac ) (struct IsdnCardState*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* writeisacfifo ) (struct IsdnCardState*,int*,int) ;TYPE_1__* tx_skb; } ;
struct TYPE_5__ {int len; int* data; } ;

/* Variables and functions */
 int DBUSY_TIMER_VALUE ; 
 int D_FIFO_SIZE ; 
 int /*<<< orphan*/  FLG_DBUSY_TIMER ; 
 int HZ ; 
 int /*<<< orphan*/  IPACX_CMDRD ; 
 int L1_DEB_ISAC ; 
 int L1_DEB_ISAC_FIFO ; 
 int /*<<< orphan*/  FUNC0 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct IsdnCardState*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void 
FUNC10(struct IsdnCardState *cs)
{
	int count;
	u_char cmd, *ptr;

	if ((cs->debug &L1_DEB_ISAC) && !(cs->debug &L1_DEB_ISAC_FIFO))
		FUNC2(cs, "dch_fill_fifo()");
    
	if (!cs->tx_skb) return;
	count = cs->tx_skb->len;
	if (count <= 0) return;

	if (count > D_FIFO_SIZE) {
		count = D_FIFO_SIZE;
		cmd   = 0x08; // XTF
	} else {
		cmd   = 0x0A; // XTF | XME
	}
  
	ptr = cs->tx_skb->data;
	FUNC5(cs->tx_skb, count);
	cs->tx_cnt += count;
	cs->writeisacfifo(cs, ptr, count);
	cs->writeisac(cs, IPACX_CMDRD, cmd);
  
  // set timeout for transmission contol
	if (FUNC9(FLG_DBUSY_TIMER, &cs->HW_Flags)) {
		FUNC2(cs, "dch_fill_fifo dbusytimer running");
		FUNC3(&cs->dbusytimer);
	}
	FUNC4(&cs->dbusytimer);
	cs->dbusytimer.expires = jiffies + ((DBUSY_TIMER_VALUE * HZ)/1000);
	FUNC1(&cs->dbusytimer);
  
	if (cs->debug &L1_DEB_ISAC_FIFO) {
		char *t = cs->dlog;

		t += FUNC6(t, "dch_fill_fifo() cnt %d", count);
		FUNC0(t, ptr, count);
		FUNC2(cs, cs->dlog);
	}
}