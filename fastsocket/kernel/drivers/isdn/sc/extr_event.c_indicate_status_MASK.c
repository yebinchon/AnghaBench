#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_6__ {int /*<<< orphan*/  num; int /*<<< orphan*/  setup; int /*<<< orphan*/  length; } ;
struct TYPE_8__ {int command; int /*<<< orphan*/  arg; int /*<<< orphan*/  driver; TYPE_1__ parm; } ;
typedef  TYPE_3__ isdn_ctrl ;
struct TYPE_9__ {TYPE_2__* card; int /*<<< orphan*/  driverId; int /*<<< orphan*/  devicename; } ;
struct TYPE_7__ {int (* statcallb ) (TYPE_3__*) ;} ;

/* Variables and functions */
#define  ISDN_STAT_BSENT 129 
#define  ISDN_STAT_ICALL 128 
 int /*<<< orphan*/ * events ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_5__** sc_adapter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_3__*) ; 

int FUNC4(int card, int event,ulong Channel,char *Data)
{
	isdn_ctrl cmd;

#ifdef DEBUG
	pr_debug("%s: Indicating event %s on Channel %d\n",
		sc_adapter[card]->devicename, events[event-256], Channel);
#endif
	if (Data != NULL){
		FUNC1("%s: Event data: %s\n", sc_adapter[card]->devicename,
			Data);
		switch (event) {
			case ISDN_STAT_BSENT:
				FUNC0(&cmd.parm.length, Data, sizeof(cmd.parm.length));
				break;
			case ISDN_STAT_ICALL:
				FUNC0(&cmd.parm.setup, Data, sizeof(cmd.parm.setup));
				break;
			default:
				FUNC2(cmd.parm.num, Data);
		}
	}

	cmd.command = event;
	cmd.driver = sc_adapter[card]->driverId;
	cmd.arg = Channel;
	return sc_adapter[card]->card->statcallb(&cmd);
}