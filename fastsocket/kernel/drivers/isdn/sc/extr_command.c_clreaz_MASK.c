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
struct TYPE_4__ {int /*<<< orphan*/  devicename; TYPE_1__* channel; } ;
struct TYPE_3__ {int eazclear; int /*<<< orphan*/  eazlist; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 TYPE_2__** sc_adapter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(int card, unsigned long arg)
{
	if(!FUNC0(card)) {
		FUNC1("Invalid param: %d is not a valid card id\n", card);
		return -ENODEV;
	}

	FUNC2(sc_adapter[card]->channel[arg].eazlist, "");
	sc_adapter[card]->channel[arg].eazclear = 1;
	FUNC1("%s: EAZ List cleared for channel %lu\n",
		sc_adapter[card]->devicename, arg+1);
	return 0;
}