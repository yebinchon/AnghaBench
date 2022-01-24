#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cmd_rcvr {unsigned int chans; struct cmd_rcvr* next; int /*<<< orphan*/  link; TYPE_1__* user; } ;
typedef  TYPE_1__* ipmi_user_t ;
typedef  TYPE_2__* ipmi_smi_t ;
struct TYPE_6__ {int /*<<< orphan*/  cmd_rcvrs_mutex; } ;
struct TYPE_5__ {TYPE_2__* intf; } ;

/* Variables and functions */
 int ENOENT ; 
 int IPMI_NUM_CHANNELS ; 
 struct cmd_rcvr* FUNC0 (TYPE_2__*,unsigned char,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_rcvr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(ipmi_user_t   user,
			    unsigned char netfn,
			    unsigned char cmd,
			    unsigned int  chans)
{
	ipmi_smi_t      intf = user->intf;
	struct cmd_rcvr *rcvr;
	struct cmd_rcvr *rcvrs = NULL;
	int i, rv = -ENOENT;

	FUNC3(&intf->cmd_rcvrs_mutex);
	for (i = 0; i < IPMI_NUM_CHANNELS; i++) {
		if (((1 << i) & chans) == 0)
			continue;
		rcvr = FUNC0(intf, netfn, cmd, i);
		if (rcvr == NULL)
			continue;
		if (rcvr->user == user) {
			rv = 0;
			rcvr->chans &= ~chans;
			if (rcvr->chans == 0) {
				FUNC2(&rcvr->link);
				rcvr->next = rcvrs;
				rcvrs = rcvr;
			}
		}
	}
	FUNC4(&intf->cmd_rcvrs_mutex);
	FUNC5();
	while (rcvrs) {
		rcvr = rcvrs;
		rcvrs = rcvr->next;
		FUNC1(rcvr);
	}
	return rv;
}