#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ expires; } ;
struct TYPE_7__ {scalar_t__ tx_xmtlen; } ;
struct TYPE_8__ {TYPE_1__ amd7930; } ;
struct IsdnCardState {int debug; scalar_t__ tx_cnt; char* dlog; TYPE_4__ dbusytimer; int /*<<< orphan*/  HW_Flags; TYPE_2__ dc; TYPE_3__* tx_skb; } ;
typedef  scalar_t__ WORD ;
struct TYPE_9__ {scalar_t__ len; int* data; } ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*) ; 
 int DBUSY_TIMER_VALUE ; 
 int /*<<< orphan*/  FLG_DBUSY_TIMER ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int HZ ; 
 int L1_DEB_ISAC ; 
 int L1_DEB_ISAC_FIFO ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct IsdnCardState*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__ jiffies ; 
 int FUNC9 (struct IsdnCardState*,int) ; 
 scalar_t__ FUNC10 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct IsdnCardState*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct IsdnCardState*,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC16(struct IsdnCardState *cs)
{

        WORD dtcrr, dtcrw, len, count;
        BYTE txstat, dmr3;
        BYTE *ptr, *deb_ptr;

	if ((cs->debug & L1_DEB_ISAC) && !(cs->debug & L1_DEB_ISAC_FIFO))
		FUNC6(cs, "Amd7930: fill_Dfifo");

	if ((!cs->tx_skb) || (cs->tx_skb->len <= 0))
		return;

        dtcrw = 0;
        if(!cs->dc.amd7930.tx_xmtlen)
                /* new Frame */
                len = dtcrw = cs->tx_skb->len;
        /* continue frame */
        else len = cs->dc.amd7930.tx_xmtlen;


	/* AMD interrupts off */
	FUNC0(cs);

        deb_ptr = ptr = cs->tx_skb->data;

        /* while free place in tx-fifo available and data in sk-buffer */
        txstat = 0x10;
        while((txstat & 0x10) && (cs->tx_cnt < len)) {
                FUNC14(cs, 0x04, *ptr);
                ptr++;
                cs->tx_cnt++;
                txstat= FUNC9(cs, 0x07);
        }
        count = ptr - cs->tx_skb->data;
	FUNC11(cs->tx_skb, count);


        dtcrr = FUNC10(cs, 0x85); // DTCR
        dmr3  = FUNC9(cs, 0x8E);

	if (cs->debug & L1_DEB_ISAC) {
		FUNC6(cs, "Amd7930: fill_Dfifo, DMR3: 0x%02X, DTCR read: 0x%04X write: 0x%02X 0x%02X", dmr3, dtcrr, FUNC3(dtcrw), FUNC2(dtcrw));
        }

        /* writeing of dtcrw starts transmit */
        if(!cs->dc.amd7930.tx_xmtlen) {
                FUNC15(cs, 0x85, dtcrw);
                cs->dc.amd7930.tx_xmtlen = dtcrw;
        }

	if (FUNC13(FLG_DBUSY_TIMER, &cs->HW_Flags)) {
		FUNC6(cs, "Amd7930: fill_Dfifo dbusytimer running");
		FUNC7(&cs->dbusytimer);
	}
	FUNC8(&cs->dbusytimer);
	cs->dbusytimer.expires = jiffies + ((DBUSY_TIMER_VALUE * HZ) / 1000);
	FUNC5(&cs->dbusytimer);

	if (cs->debug & L1_DEB_ISAC_FIFO) {
		char *t = cs->dlog;

		t += FUNC12(t, "Amd7930: fill_Dfifo cnt: %d |", count);
		FUNC4(t, deb_ptr, count);
		FUNC6(cs, cs->dlog);
	}
	/* AMD interrupts on */
        FUNC1(cs);
}