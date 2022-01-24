#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct sk_buff {int* data; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {int si1; char* eazmsn; int plan; char* phone; int screen; scalar_t__ si2; } ;
struct TYPE_8__ {int moderate; int cause; int bchannel; TYPE_2__ setup; } ;
struct l3_process {int debug; TYPE_4__* st; TYPE_3__ para; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_4__*,int,struct l3_process*) ;} ;
struct TYPE_9__ {TYPE_1__ l3; } ;

/* Variables and functions */
 int CC_SETUP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int ERR_IE_COMPREHENSION ; 
 int INDICATION ; 
 int L3_DEB_SI ; 
 int L3_DEB_WARN ; 
 int FUNC1 (struct l3_process*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ie_SETUP ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,...) ; 
 int FUNC5 (struct l3_process*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_process*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC11(struct l3_process *pc, u_char pr, void *arg)
{
	u_char *p;
	int bcfound = 0;
	char tmp[80];
	struct sk_buff *skb = arg;
	int id;
	int err = 0;

	/*
	 * Bearer Capabilities
	 */
	p = skb->data;
	/* only the first occurence 'll be detected ! */
	if ((p = FUNC2(p, skb->len, 0x04, 0))) {
		if ((p[1] < 2) || (p[1] > 11))
			err = 1;
		else {
			pc->para.setup.si2 = 0;
			switch (p[2] & 0x7f) {
				case 0x00: /* Speech */
				case 0x10: /* 3.1 Khz audio */
					pc->para.setup.si1 = 1;
					break;
				case 0x08: /* Unrestricted digital information */
					pc->para.setup.si1 = 7;
/* JIM, 05.11.97 I wanna set service indicator 2 */
#ifdef EXT_BEARER_CAPS
					pc->para.setup.si2 = DecodeSI2(skb);
#endif
					break;
				case 0x09: /* Restricted digital information */
					pc->para.setup.si1 = 2;
					break;
				case 0x11:
					/* Unrestr. digital information  with 
					 * tones/announcements ( or 7 kHz audio
					 */
					pc->para.setup.si1 = 3;
					break;
				case 0x18: /* Video */
					pc->para.setup.si1 = 4;
					break;
				default:
					err = 2;
					break;
			}
			switch (p[3] & 0x7f) {
				case 0x40: /* packed mode */
					pc->para.setup.si1 = 8;
					break;
				case 0x10: /* 64 kbit */
				case 0x11: /* 2*64 kbit */
				case 0x13: /* 384 kbit */
				case 0x15: /* 1536 kbit */
				case 0x17: /* 1920 kbit */
					pc->para.moderate = p[3] & 0x7f;
					break;
				default:
					err = 3;
					break;
			}
		}
		if (pc->debug & L3_DEB_SI)
			FUNC4(pc->st, "SI=%d, AI=%d",
				pc->para.setup.si1, pc->para.setup.si2);
		if (err) {
			if (pc->debug & L3_DEB_WARN)
				FUNC4(pc->st, "setup with wrong bearer(l=%d:%x,%x)",
					p[1], p[2], p[3]);
			pc->para.cause = 100;
			FUNC6(pc, pr, NULL);
			return;
		}
	} else {
		if (pc->debug & L3_DEB_WARN)
			FUNC4(pc->st, "setup without bearer capabilities");
		/* ETS 300-104 1.3.3 */
		pc->para.cause = 96;
		FUNC6(pc, pr, NULL);
		return;
	}
	/*
	 * Channel Identification
	 */
	if ((id = FUNC5(pc, skb)) >= 0) {
		if ((pc->para.bchannel = id)) {
			if ((3 == id) && (0x10 == pc->para.moderate)) {
				if (pc->debug & L3_DEB_WARN)
					FUNC4(pc->st, "setup with wrong chid %x",
						id);
				pc->para.cause = 100;
				FUNC6(pc, pr, NULL);
				return;
			}
			bcfound++;
		} else 
                   { if (pc->debug & L3_DEB_WARN)
			 FUNC4(pc->st, "setup without bchannel, call waiting");
                     bcfound++;
                   } 
	} else {
		if (pc->debug & L3_DEB_WARN)
			FUNC4(pc->st, "setup with wrong chid ret %d", id);
		if (id == -1)
			pc->para.cause = 96;
		else
			pc->para.cause = 100;
		FUNC6(pc, pr, NULL);
		return;
	}
	/* Now we are on none mandatory IEs */
	err = FUNC1(pc, skb, ie_SETUP);
	if (ERR_IE_COMPREHENSION == err) {
		pc->para.cause = 96;
		FUNC6(pc, pr, NULL);
		return;
	}
	p = skb->data;
	if ((p = FUNC2(p, skb->len, 0x70, 0)))
		FUNC3(pc->para.setup.eazmsn, p, 1);
	else
		pc->para.setup.eazmsn[0] = 0;

	p = skb->data;
	if ((p = FUNC2(p, skb->len, 0x71, 0))) {
		/* Called party subaddress */
		if ((p[1] >= 2) && (p[2] == 0x80) && (p[3] == 0x50)) {
			tmp[0] = '.';
			FUNC3(&tmp[1], p, 2);
			FUNC9(pc->para.setup.eazmsn, tmp);
		} else if (pc->debug & L3_DEB_WARN)
			FUNC4(pc->st, "wrong called subaddress");
	}
	p = skb->data;
	if ((p = FUNC2(p, skb->len, 0x6c, 0))) {
		pc->para.setup.plan = p[2];
		if (p[2] & 0x80) {
			FUNC3(pc->para.setup.phone, p, 1);
			pc->para.setup.screen = 0;
		} else {
			FUNC3(pc->para.setup.phone, p, 2);
			pc->para.setup.screen = p[3];
		}
	} else {
		pc->para.setup.phone[0] = 0;
		pc->para.setup.plan = 0;
		pc->para.setup.screen = 0;
	}
	p = skb->data;
	if ((p = FUNC2(p, skb->len, 0x6d, 0))) {
		/* Calling party subaddress */
		if ((p[1] >= 2) && (p[2] == 0x80) && (p[3] == 0x50)) {
			tmp[0] = '.';
			FUNC3(&tmp[1], p, 2);
			FUNC9(pc->para.setup.phone, tmp);
		} else if (pc->debug & L3_DEB_WARN)
			FUNC4(pc->st, "wrong calling subaddress");
	}
	FUNC8(pc, 6);
	if (err) /* STATUS for none mandatory IE errors after actions are taken */
		FUNC7(pc, err);
	pc->st->l3.l3l4(pc->st, CC_SETUP | INDICATION, pc);
}