#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_3__ {scalar_t__ isar; } ;
struct TYPE_4__ {TYPE_1__ isurf; } ;
struct IsdnCardState {int /*<<< orphan*/  lock; int /*<<< orphan*/  (* writeisac ) (struct IsdnCardState*,int /*<<< orphan*/ ,int) ;TYPE_2__ hw; } ;

/* Variables and functions */
#define  CARD_INIT 131 
#define  CARD_RELEASE 130 
#define  CARD_RESET 129 
#define  CARD_TEST 128 
 int /*<<< orphan*/  ISAC_CMDR ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 scalar_t__ ISAR_IRQBIT ; 
 int /*<<< orphan*/  ISURF_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(struct IsdnCardState *cs, int mt, void *arg)
{
	u_long flags;

	switch (mt) {
		case CARD_RESET:
			FUNC6(&cs->lock, flags);
			FUNC5(cs, ISURF_RESET);
			FUNC7(&cs->lock, flags);
			return(0);
		case CARD_RELEASE:
			FUNC4(cs);
			return(0);
		case CARD_INIT:
			FUNC6(&cs->lock, flags);
			FUNC5(cs, ISURF_RESET);
			FUNC0(cs);
			FUNC10(0, cs->hw.isurf.isar+ISAR_IRQBIT);FUNC3();
			FUNC1(cs);
			FUNC2(cs);
			/* Reenable ISAC IRQ */
			cs->writeisac(cs, ISAC_MASK, 0);
			/* RESET Receiver and Transmitter */
			cs->writeisac(cs, ISAC_CMDR, 0x41);
			FUNC7(&cs->lock, flags);
			return(0);
		case CARD_TEST:
			return(0);
	}
	return(0);
}