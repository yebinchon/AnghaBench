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
struct TYPE_2__ {int /*<<< orphan*/  devicename; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  ISDN_STAT_BCONN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 TYPE_1__** sc_adapter ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 

__attribute__((used)) static int FUNC5(int card, unsigned long channel)
{
	if(!FUNC0(card)) {
		FUNC3("Invalid param: %d is not a valid card id\n", card);
		return -ENODEV;
	}

	if(FUNC4(card, channel+1)) {
		FUNC1(card, channel+1);
		return -ENOBUFS;
	}

	FUNC2(card, ISDN_STAT_BCONN,channel,NULL);
	FUNC3("%s: Answered incoming call on channel %lu\n",
		sc_adapter[card]->devicename, channel+1);
	return 0;
}