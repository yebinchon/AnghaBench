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
struct TYPE_3__ {int /*<<< orphan*/  cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {int /*<<< orphan*/  lock; TYPE_2__ hw; } ;

/* Variables and functions */
#define  CARD_INIT 131 
#define  CARD_RELEASE 130 
#define  CARD_RESET 129 
#define  CARD_TEST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct IsdnCardState *cs, int mt, void *arg)
{
	u_long flags;

	switch (mt) {
		case CARD_RESET:
			return(0);
		case CARD_RELEASE:
			FUNC2(cs, 0x3f);
			return(0);
		case CARD_INIT:
			FUNC3(&cs->lock, flags);
			FUNC1(cs, 1);
			FUNC0(cs->hw.avm.cfg_reg, 0x16);
			FUNC0(cs->hw.avm.cfg_reg, 0x1E);
			FUNC1(cs, 2);
			FUNC4(&cs->lock, flags);
			return(0);
		case CARD_TEST:
			return(0);
	}
	return(0);
}