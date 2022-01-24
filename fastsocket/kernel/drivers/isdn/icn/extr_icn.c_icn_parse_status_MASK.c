#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int /*<<< orphan*/  ncmd ;
struct TYPE_17__ {int si1; int /*<<< orphan*/  screen; int /*<<< orphan*/  plan; void* si2; int /*<<< orphan*/  eazmsn; int /*<<< orphan*/  phone; } ;
struct TYPE_18__ {int /*<<< orphan*/  num; TYPE_2__ setup; } ;
struct TYPE_19__ {int driver; int arg; void* command; TYPE_3__ parm; } ;
typedef  TYPE_4__ isdn_ctrl ;
struct TYPE_20__ {char* statstr; int action; void* command; } ;
typedef  TYPE_5__ icn_stat ;
struct TYPE_16__ {int /*<<< orphan*/  (* statcallb ) (TYPE_4__*) ;} ;
struct TYPE_21__ {int myid; int flags; TYPE_1__ interface; int /*<<< orphan*/  lock; int /*<<< orphan*/ * rcvidx; } ;
typedef  TYPE_6__ icn_card ;

/* Variables and functions */
 int ICN_FLAGS_B1ACTIVE ; 
 int ICN_FLAGS_B2ACTIVE ; 
 void* ISDN_STAT_BHUP ; 
 void* ISDN_STAT_DHUP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int) ; 
 TYPE_5__* icn_stat_table ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC16(u_char * status, int channel, icn_card * card)
{
	icn_stat *s = icn_stat_table;
	int action = -1;
	unsigned long flags;
	isdn_ctrl cmd;

	while (s->statstr) {
		if (!FUNC10(status, s->statstr, FUNC9(s->statstr))) {
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
		case 11:
			FUNC4(&card->lock, flags);
			FUNC0(card,channel);
			card->rcvidx[channel] = 0;

			if (card->flags & 
			    ((channel)?ICN_FLAGS_B2ACTIVE:ICN_FLAGS_B1ACTIVE)) {
				
				isdn_ctrl ncmd;
				
				card->flags &= ~((channel)?
						 ICN_FLAGS_B2ACTIVE:ICN_FLAGS_B1ACTIVE);
				
				FUNC1(&ncmd, 0, sizeof(ncmd));
				
				ncmd.driver = card->myid;
				ncmd.arg = channel;
				ncmd.command = ISDN_STAT_BHUP;
				FUNC5(&card->lock, flags);
				card->interface.statcallb(&cmd);
			} else
				FUNC5(&card->lock, flags);
			break;
		case 1:
			FUNC4(&card->lock, flags);
			FUNC0(card,channel);
			card->flags |= (channel) ?
			    ICN_FLAGS_B2ACTIVE : ICN_FLAGS_B1ACTIVE;
			FUNC5(&card->lock, flags);
			break;
		case 2:
			FUNC4(&card->lock, flags);
			card->flags &= ~((channel) ?
				ICN_FLAGS_B2ACTIVE : ICN_FLAGS_B1ACTIVE);
			FUNC0(card, channel);
			card->rcvidx[channel] = 0;
			FUNC5(&card->lock, flags);
			break;
		case 3:
			{
				char *t = status + 6;
				char *s = FUNC7(t, ',');

				*s++ = '\0';
				FUNC8(cmd.parm.setup.phone, t,
					sizeof(cmd.parm.setup.phone));
				s = FUNC7(t = s, ',');
				*s++ = '\0';
				if (!FUNC9(t))
					cmd.parm.setup.si1 = 0;
				else
					cmd.parm.setup.si1 =
					    FUNC2(t, NULL, 10);
				s = FUNC7(t = s, ',');
				*s++ = '\0';
				if (!FUNC9(t))
					cmd.parm.setup.si2 = 0;
				else
					cmd.parm.setup.si2 =
					    FUNC2(t, NULL, 10);
				FUNC8(cmd.parm.setup.eazmsn, s,
					sizeof(cmd.parm.setup.eazmsn));
			}
			cmd.parm.setup.plan = 0;
			cmd.parm.setup.screen = 0;
			break;
		case 4:
			FUNC6(cmd.parm.setup.phone, "LEASED%d", card->myid);
			FUNC6(cmd.parm.setup.eazmsn, "%d", channel + 1);
			cmd.parm.setup.si1 = 7;
			cmd.parm.setup.si2 = 0;
			cmd.parm.setup.plan = 0;
			cmd.parm.setup.screen = 0;
			break;
		case 5:
			FUNC8(cmd.parm.num, status + 3, sizeof(cmd.parm.num));
			break;
		case 6:
			FUNC3(cmd.parm.num, sizeof(cmd.parm.num), "%d",
			     (int) FUNC2(status + 7, NULL, 16));
			break;
		case 7:
			status += 3;
			if (FUNC9(status) == 4)
				FUNC3(cmd.parm.num, sizeof(cmd.parm.num), "%s%c%c",
				     status + 2, *status, *(status + 1));
			else
				FUNC8(cmd.parm.num, status + 1, sizeof(cmd.parm.num));
			break;
		case 8:
			FUNC4(&card->lock, flags);
			card->flags &= ~ICN_FLAGS_B1ACTIVE;
			FUNC0(card, 0);
			card->rcvidx[0] = 0;
			FUNC5(&card->lock, flags);
			cmd.arg = 0;
			cmd.driver = card->myid;
			card->interface.statcallb(&cmd);
			cmd.command = ISDN_STAT_DHUP;
			cmd.arg = 0;
			cmd.driver = card->myid;
			card->interface.statcallb(&cmd);
			cmd.command = ISDN_STAT_BHUP;
			FUNC4(&card->lock, flags);
			card->flags &= ~ICN_FLAGS_B2ACTIVE;
			FUNC0(card, 1);
			card->rcvidx[1] = 0;
			FUNC5(&card->lock, flags);
			cmd.arg = 1;
			cmd.driver = card->myid;
			card->interface.statcallb(&cmd);
			cmd.command = ISDN_STAT_DHUP;
			cmd.arg = 1;
			cmd.driver = card->myid;
			break;
	}
	card->interface.statcallb(&cmd);
	return;
}