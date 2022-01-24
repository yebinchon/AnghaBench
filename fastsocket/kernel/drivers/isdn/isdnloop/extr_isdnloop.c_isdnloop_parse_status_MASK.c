#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_18__ {char* statstr; int action; void* command; } ;
typedef  TYPE_4__ isdnloop_stat ;
struct TYPE_17__ {int /*<<< orphan*/  (* statcallb ) (TYPE_6__*) ;} ;
struct TYPE_19__ {int myid; TYPE_3__ interface; int /*<<< orphan*/  flags; } ;
typedef  TYPE_5__ isdnloop_card ;
struct TYPE_15__ {int si1; int /*<<< orphan*/  screen; int /*<<< orphan*/  plan; int /*<<< orphan*/  si2; int /*<<< orphan*/  eazmsn; int /*<<< orphan*/  phone; } ;
struct TYPE_16__ {int /*<<< orphan*/  num; TYPE_1__ setup; } ;
struct TYPE_20__ {int driver; int arg; void* command; TYPE_2__ parm; } ;
typedef  TYPE_6__ isdn_ctrl ;

/* Variables and functions */
 int /*<<< orphan*/  ISDNLOOP_FLAGS_B1ACTIVE ; 
 int /*<<< orphan*/  ISDNLOOP_FLAGS_B2ACTIVE ; 
 void* ISDN_STAT_BHUP ; 
 void* ISDN_STAT_DHUP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_6__*) ; 
 TYPE_4__* isdnloop_stat_table ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 

__attribute__((used)) static void
FUNC12(u_char * status, int channel, isdnloop_card * card)
{
	isdnloop_stat *s = isdnloop_stat_table;
	int action = -1;
	isdn_ctrl cmd;

	while (s->statstr) {
		if (!FUNC7(status, s->statstr, FUNC6(s->statstr))) {
			cmd.command = s->command;
			action = s->action;
			break;
		}
		s++;
	}
	if (action == -1)
		return;
	cmd.driver = card->myid;
	cmd.arg = channel;
	switch (action) {
		case 1:
			/* BCON_x */
			card->flags |= (channel) ?
			    ISDNLOOP_FLAGS_B2ACTIVE : ISDNLOOP_FLAGS_B1ACTIVE;
			break;
		case 2:
			/* BDIS_x */
			card->flags &= ~((channel) ?
					 ISDNLOOP_FLAGS_B2ACTIVE : ISDNLOOP_FLAGS_B1ACTIVE);
			FUNC0(card, channel);
			break;
		case 3:
			/* DCAL_I and DSCA_I */
			FUNC1(status + 6, &cmd);
			break;
		case 4:
			/* FCALL */
			FUNC4(cmd.parm.setup.phone, "LEASED%d", card->myid);
			FUNC4(cmd.parm.setup.eazmsn, "%d", channel + 1);
			cmd.parm.setup.si1 = 7;
			cmd.parm.setup.si2 = 0;
			cmd.parm.setup.plan = 0;
			cmd.parm.setup.screen = 0;
			break;
		case 5:
			/* CIF */
			FUNC5(cmd.parm.num, status + 3, sizeof(cmd.parm.num));
			break;
		case 6:
			/* AOC */
			FUNC3(cmd.parm.num, sizeof(cmd.parm.num), "%d",
			     (int) FUNC2(status + 7, NULL, 16));
			break;
		case 7:
			/* CAU */
			status += 3;
			if (FUNC6(status) == 4)
				FUNC3(cmd.parm.num, sizeof(cmd.parm.num), "%s%c%c",
				     status + 2, *status, *(status + 1));
			else
				FUNC5(cmd.parm.num, status + 1, sizeof(cmd.parm.num));
			break;
		case 8:
			/* Misc Errors on L1 and L2 */
			card->flags &= ~ISDNLOOP_FLAGS_B1ACTIVE;
			FUNC0(card, 0);
			cmd.arg = 0;
			cmd.driver = card->myid;
			card->interface.statcallb(&cmd);
			cmd.command = ISDN_STAT_DHUP;
			cmd.arg = 0;
			cmd.driver = card->myid;
			card->interface.statcallb(&cmd);
			cmd.command = ISDN_STAT_BHUP;
			card->flags &= ~ISDNLOOP_FLAGS_B2ACTIVE;
			FUNC0(card, 1);
			cmd.arg = 1;
			cmd.driver = card->myid;
			card->interface.statcallb(&cmd);
			cmd.command = ISDN_STAT_DHUP;
			cmd.arg = 1;
			cmd.driver = card->myid;
			break;
	}
	card->interface.statcallb(&cmd);
}