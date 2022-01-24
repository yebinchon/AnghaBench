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
struct TYPE_3__ {int /*<<< orphan*/  res_irq; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ spt; } ;
struct IsdnCardState {int /*<<< orphan*/  lock; TYPE_2__ hw; } ;

/* Variables and functions */
#define  CARD_INIT 131 
#define  CARD_RELEASE 130 
#define  CARD_RESET 129 
#define  CARD_TEST 128 
 int /*<<< orphan*/  SPORTSTER_INTE ; 
 scalar_t__ SPORTSTER_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct IsdnCardState *cs, int mt, void *arg)
{
	u_long flags;

	switch (mt) {
		case CARD_RESET:
			FUNC4(&cs->lock, flags);
			FUNC3(cs);
			FUNC5(&cs->lock, flags);
			return(0);
		case CARD_RELEASE:
			FUNC2(cs);
			return(0);
		case CARD_INIT:
			FUNC4(&cs->lock, flags);
			FUNC3(cs);
			FUNC1(cs, 1);
			cs->hw.spt.res_irq |= SPORTSTER_INTE; /* IRQ On */
			FUNC0(cs->hw.spt.cfg_reg + SPORTSTER_RES_IRQ, cs->hw.spt.res_irq);
			FUNC1(cs, 2);
			FUNC5(&cs->lock, flags);
			return(0);
		case CARD_TEST:
			return(0);
	}
	return(0);
}