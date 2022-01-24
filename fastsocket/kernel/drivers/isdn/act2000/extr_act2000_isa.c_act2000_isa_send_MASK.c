#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/ * data; scalar_t__ len; } ;
struct TYPE_12__ {scalar_t__ flags; } ;
struct TYPE_13__ {TYPE_3__ data_b3_req; } ;
struct TYPE_10__ {int cmd; scalar_t__ subcmd; } ;
struct TYPE_11__ {TYPE_1__ cmd; } ;
struct TYPE_14__ {TYPE_4__ msg; TYPE_2__ hdr; } ;
typedef  TYPE_5__ actcapi_msg ;
struct TYPE_15__ {struct sk_buff* sbuf; int /*<<< orphan*/  ackq; scalar_t__ need_b3ack; int /*<<< orphan*/ * ack_msg; int /*<<< orphan*/  ilock; int /*<<< orphan*/  lock; int /*<<< orphan*/  sndq; } ;
typedef  TYPE_6__ act2000_card ;

/* Variables and functions */
 int /*<<< orphan*/  ACT2000_LOCK_TX ; 
 scalar_t__ FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,void*) ; 

void
FUNC10(act2000_card * card)
{
	unsigned long flags;
	struct sk_buff *skb;
	actcapi_msg *msg;
	int l;

        if (FUNC9(ACT2000_LOCK_TX, (void *) &card->ilock) != 0)
		return;
	while (1) {
		FUNC6(&card->lock, flags);
		if (!(card->sbuf)) {
			if ((card->sbuf = FUNC3(&card->sndq))) {
				card->ack_msg = card->sbuf->data;
				msg = (actcapi_msg *)card->sbuf->data;
				if ((msg->hdr.cmd.cmd == 0x86) &&
				    (msg->hdr.cmd.subcmd == 0)   ) {
					/* Save flags in message */
					card->need_b3ack = msg->msg.data_b3_req.flags;
					msg->msg.data_b3_req.flags = 0;
				}
			}
		}
		FUNC7(&card->lock, flags);
		if (!(card->sbuf)) {
			/* No more data to send */
			FUNC8(ACT2000_LOCK_TX, (void *) &card->ilock);
			return;
		}
		skb = card->sbuf;
		l = 0;
		while (skb->len) {
			if (FUNC0(card, *(skb->data))) {
				/* Fifo is full, but more data to send */
				FUNC8(ACT2000_LOCK_TX, (void *) &card->ilock);
				/* Schedule myself */
				FUNC1(card);
				return;
			}
			FUNC4(skb, 1);
			l++;
		}
		msg = (actcapi_msg *)card->ack_msg;
		if ((msg->hdr.cmd.cmd == 0x86) &&
		    (msg->hdr.cmd.subcmd == 0)   ) {
			/*
			 * If it's user data, reset data-ptr
			 * and put skb into ackq.
			 */
			skb->data = card->ack_msg;
			/* Restore flags in message */
			msg->msg.data_b3_req.flags = card->need_b3ack;
			FUNC5(&card->ackq, skb);
		} else
			FUNC2(skb);
		card->sbuf = NULL;
	}
}