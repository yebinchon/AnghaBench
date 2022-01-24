#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct TYPE_4__ {int devicename; int /*<<< orphan*/ * ioport; int /*<<< orphan*/  lock; TYPE_2__ reset_timer; scalar_t__ EngineUp; int /*<<< orphan*/  stat_timer; } ;

/* Variables and functions */
 scalar_t__ CHECKRESET_TIME ; 
 int ENODEV ; 
 int /*<<< orphan*/  ISDN_STAT_STOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t SFT_RESET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 TYPE_1__** sc_adapter ; 
 int /*<<< orphan*/  sc_check_reset ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC9(int card)
{
	unsigned long flags;

	if(!FUNC0(card)) {
		FUNC6("Invalid param: %d is not a valid card id\n", card);
		return -ENODEV;
	}

	FUNC3(card, ISDN_STAT_STOP, 0, NULL);

	if(sc_adapter[card]->EngineUp) {
		FUNC2(&sc_adapter[card]->stat_timer);
	}

	sc_adapter[card]->EngineUp = 0;

	FUNC7(&sc_adapter[card]->lock, flags);
	FUNC4(&sc_adapter[card]->reset_timer);
	sc_adapter[card]->reset_timer.function = sc_check_reset;
	sc_adapter[card]->reset_timer.data = card;
	sc_adapter[card]->reset_timer.expires = jiffies + CHECKRESET_TIME;
	FUNC1(&sc_adapter[card]->reset_timer);
	FUNC8(&sc_adapter[card]->lock, flags);

	FUNC5(0x1,sc_adapter[card]->ioport[SFT_RESET]);

	FUNC6("%s: Adapter Reset\n", sc_adapter[card]->devicename);
	return 0;
}