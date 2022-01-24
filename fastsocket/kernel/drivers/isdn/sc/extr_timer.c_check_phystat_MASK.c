#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  stat_timer; scalar_t__ nphystat; scalar_t__ phystat; int /*<<< orphan*/  devicename; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPID ; 
 scalar_t__ CHECKSTAT_TIME ; 
 int /*<<< orphan*/  ISDN_STAT_RUN ; 
 int /*<<< orphan*/  ISDN_STAT_STOP ; 
 int /*<<< orphan*/  ceReqClass2 ; 
 int /*<<< orphan*/  ceReqPhyStatus ; 
 int /*<<< orphan*/  ceReqTypePhy ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__** sc_adapter ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(unsigned long data)
{
	unsigned long flags;
	int card = (unsigned int) data;

	FUNC2("%s: Checking status...\n", sc_adapter[card]->devicename);
	/* 
	 * check the results of the last PhyStat and change only if
	 * has changed drastically
	 */
	if (sc_adapter[card]->nphystat && !sc_adapter[card]->phystat) {   /* All is well */
		FUNC2("PhyStat transition to RUN\n");
		FUNC3("%s: Switch contacted, transmitter enabled\n", 
			sc_adapter[card]->devicename);
		FUNC0(card, ISDN_STAT_RUN, 0, NULL);
	}
	else if (!sc_adapter[card]->nphystat && sc_adapter[card]->phystat) {   /* All is not well */
		FUNC2("PhyStat transition to STOP\n");
		FUNC3("%s: Switch connection lost, transmitter disabled\n", 
			sc_adapter[card]->devicename);

		FUNC0(card, ISDN_STAT_STOP, 0, NULL);
	}

	sc_adapter[card]->phystat = sc_adapter[card]->nphystat;

	/* Reinitialize the timer */
	FUNC5(&sc_adapter[card]->lock, flags);
	FUNC1(&sc_adapter[card]->stat_timer, jiffies+CHECKSTAT_TIME);
	FUNC6(&sc_adapter[card]->lock, flags);

	/* Send a new cePhyStatus message */
	FUNC4(card, CEPID,ceReqTypePhy,ceReqClass2,
		ceReqPhyStatus,0,0,NULL);
}