#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__* start; scalar_t__ size; } ;
struct tiger_hw {char* name; int /*<<< orphan*/  log; TYPE_1__ recv; } ;
struct TYPE_7__ {int nr; TYPE_2__* rx_skb; scalar_t__ maxlen; int /*<<< orphan*/  Flags; struct tiger_hw* hw; } ;
struct tiger_ch {scalar_t__ lastrx; TYPE_4__ bch; int /*<<< orphan*/  hrecv; scalar_t__* hrbuf; int /*<<< orphan*/  rxstate; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; scalar_t__ len; } ;

/* Variables and functions */
 int DEBUG_HW_BFIFO ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FLG_HDLC ; 
 int /*<<< orphan*/  FLG_TRANSPARENT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HDLC_CRC_ERROR ; 
 int HDLC_FRAMING_ERROR ; 
 int HDLC_LENGTH_ERROR ; 
 int /*<<< orphan*/  LOG_SIZE ; 
 int /*<<< orphan*/  RX_OVERRUN ; 
 int debug ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__*,int,int*,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct tiger_ch *bc, u32 idx, int cnt)
{
	struct tiger_hw *card = bc->bch.hw;
	int i, stat;
	u32 val;
	u8 *p, *pn;

	if (bc->lastrx == idx) {
		bc->rxstate |= RX_OVERRUN;
		FUNC3("%s: B%1d overrun at idx %d\n", card->name,
			bc->bch.nr, idx);
	}
	bc->lastrx = idx;
	if (!bc->bch.rx_skb) {
		bc->bch.rx_skb = FUNC1(bc->bch.maxlen, GFP_ATOMIC);
		if (!bc->bch.rx_skb) {
			FUNC3("%s: B%1d receive out of memory\n",
				card->name, bc->bch.nr);
			return;
		}
	}

	if (FUNC9(FLG_TRANSPARENT, &bc->bch.Flags)) {
		if ((bc->bch.rx_skb->len + cnt) > bc->bch.maxlen) {
			FUNC2("%s: B%1d overrun %d\n", card->name,
				bc->bch.nr, bc->bch.rx_skb->len + cnt);
			FUNC7(bc->bch.rx_skb, 0);
			return;
		}
		p = FUNC6(bc->bch.rx_skb, cnt);
	} else
		p = bc->hrbuf;

	for (i = 0; i < cnt; i++) {
		val = card->recv.start[idx++];
		if (bc->bch.nr & 2)
			val >>= 8;
		if (idx >= card->recv.size)
			idx = 0;
		p[i] = val & 0xff;
	}
	pn = bc->hrbuf;
next_frame:
	if (FUNC9(FLG_HDLC, &bc->bch.Flags)) {
		stat = FUNC0(&bc->hrecv, pn, cnt, &i,
			bc->bch.rx_skb->data, bc->bch.maxlen);
		if (stat > 0) /* valid frame received */ 
			p = FUNC6(bc->bch.rx_skb, stat);
		else if (stat == -HDLC_CRC_ERROR)
			FUNC3("%s: B%1d receive frame CRC error\n",
				card->name, bc->bch.nr);
		else if (stat == -HDLC_FRAMING_ERROR)
			FUNC3("%s: B%1d receive framing error\n",
				card->name, bc->bch.nr);
		else if (stat == -HDLC_LENGTH_ERROR)
			FUNC3("%s: B%1d receive frame too long (> %d)\n",
				card->name, bc->bch.nr, bc->bch.maxlen);
	} else
		stat = cnt;	

	if (stat > 0) {
		if (debug & DEBUG_HW_BFIFO) {
			FUNC8(card->log, LOG_SIZE, "B%1d-recv %s %d ",
				bc->bch.nr, card->name, stat);
			FUNC4(card->log, DUMP_PREFIX_OFFSET,
				p, stat);
		}
		FUNC5(&bc->bch, 0);
	}
	if (FUNC9(FLG_HDLC, &bc->bch.Flags)) {
		pn += i;
		cnt -= i;
		if (!bc->bch.rx_skb) {
			bc->bch.rx_skb = FUNC1(bc->bch.maxlen,
				GFP_ATOMIC);
			if (!bc->bch.rx_skb) {
				FUNC3("%s: B%1d receive out of memory\n",
					card->name, bc->bch.nr);
				return;
			}
		}
		if (cnt > 0)
			goto next_frame;
	}
}