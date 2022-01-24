#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int mode; struct BCState* bcs; int /*<<< orphan*/  hardware; int /*<<< orphan*/  bc; } ;
struct TYPE_13__ {int /*<<< orphan*/  l2l1; } ;
struct PStack {TYPE_7__ l1; TYPE_6__ l2; } ;
struct TYPE_8__ {int /*<<< orphan*/  rcvidx; int /*<<< orphan*/  rcvbuf; } ;
struct TYPE_9__ {TYPE_1__ hscx; } ;
struct BCState {int mode; struct PStack* st; TYPE_5__* cs; int /*<<< orphan*/  tx_cnt; TYPE_2__ hw; int /*<<< orphan*/  event; int /*<<< orphan*/  Flag; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/  squeue; int /*<<< orphan*/  rqueue; int /*<<< orphan*/  channel; } ;
struct TYPE_10__ {struct BCState* bcs; int /*<<< orphan*/  rcvbuf; } ;
struct TYPE_11__ {TYPE_3__ elsa; } ;
struct TYPE_12__ {TYPE_4__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FLG_BUSY ; 
 int /*<<< orphan*/  BC_FLG_INIT ; 
#define  L1_MODE_HDLC 130 
#define  L1_MODE_MODEM 129 
#define  L1_MODE_TRANS 128 
 int /*<<< orphan*/  hscx_l2l1 ; 
 int /*<<< orphan*/  modem_l2l1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct BCState*) ; 
 int /*<<< orphan*/  FUNC1 (struct PStack*) ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct PStack *st, struct BCState *bcs)
{

	bcs->channel = st->l1.bc;
	switch (st->l1.mode) {
		case L1_MODE_HDLC:
		case L1_MODE_TRANS:
			if (FUNC0(st->l1.hardware, bcs))
				return (-1);
			st->l2.l2l1 = hscx_l2l1;
			break;
		case L1_MODE_MODEM:
			bcs->mode = L1_MODE_MODEM;
			if (!FUNC5(BC_FLG_INIT, &bcs->Flag)) {
				bcs->hw.hscx.rcvbuf = bcs->cs->hw.elsa.rcvbuf;
				FUNC3(&bcs->rqueue);
				FUNC3(&bcs->squeue);
			}
			bcs->tx_skb = NULL;
			FUNC4(BC_FLG_BUSY, &bcs->Flag);
			bcs->event = 0;
			bcs->hw.hscx.rcvidx = 0;
			bcs->tx_cnt = 0;
			bcs->cs->hw.elsa.bcs = bcs;
			st->l2.l2l1 = modem_l2l1;
			break;
	}
	st->l1.bcs = bcs;
	FUNC2(st);
	bcs->st = st;
	FUNC1(st);
	return (0);
}