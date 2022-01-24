#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct IsdnCardState {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
#define  CARD_INIT 131 
#define  CARD_RELEASE 130 
#define  CARD_RESET 129 
#define  CARD_TEST 128 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC6 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct IsdnCardState *cs, int mt, void *arg)
{
	u_long flags;

	switch (mt) {
		case CARD_RESET:
			/* Disable ints */
			FUNC7(&cs->lock, flags);
			FUNC2(cs, 0);
			FUNC6(cs);
			FUNC8(&cs->lock, flags);
			return (0);
		case CARD_RELEASE:
			/* Sanity */
			FUNC7(&cs->lock, flags);
			FUNC2(cs, 0);
			FUNC6(cs);
			FUNC8(&cs->lock, flags);
			FUNC5(cs);
			return (0);
		case CARD_INIT:
			FUNC7(&cs->lock, flags);
			FUNC0(cs);
			FUNC1(cs);
			FUNC3(cs);
			FUNC4(cs);
			/* Enable ints */
			FUNC2(cs, 1);
			FUNC8(&cs->lock, flags);
			return (0);
		case CARD_TEST:
			return (0);
	}
	return (0);
}