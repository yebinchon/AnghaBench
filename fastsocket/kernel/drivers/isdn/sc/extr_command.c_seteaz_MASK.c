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
struct TYPE_4__ {TYPE_1__* channel; int /*<<< orphan*/  devicename; } ;
struct TYPE_3__ {int /*<<< orphan*/  eazlist; scalar_t__ eazclear; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 TYPE_2__** sc_adapter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(int card, unsigned long arg, char *num)
{
	if(!FUNC0(card)) {
		FUNC1("Invalid param: %d is not a valid card id\n", card);
		return -ENODEV;
	}

	FUNC2(sc_adapter[card]->channel[arg].eazlist, num);
	sc_adapter[card]->channel[arg].eazclear = 0;
	FUNC1("%s: EAZ list for channel %lu set to: %s\n",
		sc_adapter[card]->devicename, arg+1,
		sc_adapter[card]->channel[arg].eazlist);
	return 0;
}