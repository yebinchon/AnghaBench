#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {int length; } ;
struct TYPE_11__ {int arg; TYPE_1__ parm; int /*<<< orphan*/  driver; int /*<<< orphan*/  command; } ;
typedef  TYPE_3__ isdn_ctrl ;
struct TYPE_10__ {int /*<<< orphan*/  (* statcallb ) (TYPE_3__*) ;} ;
struct TYPE_12__ {int* xlen; int /*<<< orphan*/  lock; scalar_t__* xmit_lock; struct sk_buff** xskb; TYPE_2__ interface; int /*<<< orphan*/  myid; scalar_t__* sndcount; int /*<<< orphan*/ * spqueue; scalar_t__ secondhalf; } ;
typedef  TYPE_4__ icn_card ;

/* Variables and functions */
 int ICN_FRAGSIZE ; 
 int /*<<< orphan*/  ISDN_STAT_BSENT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ sbfree ; 
 int /*<<< orphan*/  sbnext ; 
 int /*<<< orphan*/  sbuf_d ; 
 int /*<<< orphan*/  sbuf_f ; 
 int /*<<< orphan*/  sbuf_l ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(int channel, icn_card * card)
{
	int mch = channel + ((card->secondhalf) ? 2 : 0);
	int cnt;
	unsigned long flags;
	struct sk_buff *skb;
	isdn_ctrl cmd;

	if (!(card->sndcount[channel] || card->xskb[channel] ||
	      !FUNC6(&card->spqueue[channel])))
		return;
	if (FUNC2(card, mch)) {
		while (sbfree && 
		       (card->sndcount[channel] ||
			!FUNC6(&card->spqueue[channel]) ||
			card->xskb[channel])) {
			FUNC7(&card->lock, flags);
			if (card->xmit_lock[channel]) {
				FUNC8(&card->lock, flags);
				break;
			}
			card->xmit_lock[channel]++;
			FUNC8(&card->lock, flags);
			skb = card->xskb[channel];
			if (!skb) {
				skb = FUNC4(&card->spqueue[channel]);
				if (skb) {
					/* Pop ACK-flag off skb.
					 * Store length to xlen.
					 */
					if (*(FUNC5(skb,1)))
						card->xlen[channel] = skb->len;
					else
						card->xlen[channel] = 0;
				}
			}
			if (!skb)
				break;
			if (skb->len > ICN_FRAGSIZE) {
				FUNC10(0xff, &sbuf_f);
				cnt = ICN_FRAGSIZE;
			} else {
				FUNC10(0x0, &sbuf_f);
				cnt = skb->len;
			}
			FUNC10(cnt, &sbuf_l);
			FUNC3(&sbuf_d, skb->data, cnt);
			FUNC5(skb, cnt);
			sbnext; /* switch to next buffer        */
			FUNC1(card, mch & 2);
			FUNC7(&card->lock, flags);
			card->sndcount[channel] -= cnt;
			if (!skb->len) {
				if (card->xskb[channel])
					card->xskb[channel] = NULL;
				card->xmit_lock[channel] = 0;
				FUNC8(&card->lock, flags);
				FUNC0(skb);
				if (card->xlen[channel]) {
					cmd.command = ISDN_STAT_BSENT;
					cmd.driver = card->myid;
					cmd.arg = channel;
					cmd.parm.length = card->xlen[channel];
					card->interface.statcallb(&cmd);
				}
			} else {
				card->xskb[channel] = skb;
				card->xmit_lock[channel] = 0;
				FUNC8(&card->lock, flags);
			}
			if (!FUNC2(card, mch))
				break;
		}
		FUNC1(card, mch & 2);
	}
}