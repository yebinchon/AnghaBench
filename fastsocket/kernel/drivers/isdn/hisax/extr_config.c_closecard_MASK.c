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
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * function; } ;
struct IsdnCardState {TYPE_3__ dbusytimer; int /*<<< orphan*/  (* cardmsg ) (struct IsdnCardState*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* DC_Close ) (struct IsdnCardState*) ;int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/ * rcvbuf; int /*<<< orphan*/  sq; int /*<<< orphan*/  rq; TYPE_1__* bcs; } ;
struct TYPE_7__ {struct IsdnCardState* cs; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* BC_Close ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_RELEASE ; 
 TYPE_4__* cards ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC8 (struct IsdnCardState*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(int cardnr)
{
	struct IsdnCardState *csta = cards[cardnr].cs;

	if (csta->bcs->BC_Close != NULL) {
		csta->bcs->BC_Close(csta->bcs + 1);
		csta->bcs->BC_Close(csta->bcs);
	}

	FUNC4(&csta->rq);
	FUNC4(&csta->sq);
	FUNC2(csta->rcvbuf);
	csta->rcvbuf = NULL;
	if (csta->tx_skb) {
		FUNC1(csta->tx_skb);
		csta->tx_skb = NULL;
	}
	if (csta->DC_Close != NULL) {
		csta->DC_Close(csta);
	}
	if (csta->cardmsg)
		csta->cardmsg(csta, CARD_RELEASE, NULL);
	if (csta->dbusytimer.function != NULL) // FIXME?
		FUNC0(&csta->dbusytimer);
	FUNC3(csta);
}