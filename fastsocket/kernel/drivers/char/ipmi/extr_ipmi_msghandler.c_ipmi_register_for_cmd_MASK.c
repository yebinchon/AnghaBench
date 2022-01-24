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
struct cmd_rcvr {unsigned char cmd; unsigned char netfn; unsigned int chans; int /*<<< orphan*/  link; TYPE_1__* user; } ;
typedef  TYPE_1__* ipmi_user_t ;
typedef  TYPE_2__* ipmi_smi_t ;
struct TYPE_6__ {int /*<<< orphan*/  cmd_rcvrs_mutex; int /*<<< orphan*/  cmd_rcvrs; } ;
struct TYPE_5__ {TYPE_2__* intf; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,unsigned char,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_rcvr*) ; 
 struct cmd_rcvr* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(ipmi_user_t   user,
			  unsigned char netfn,
			  unsigned char cmd,
			  unsigned int  chans)
{
	ipmi_smi_t      intf = user->intf;
	struct cmd_rcvr *rcvr;
	int             rv = 0;


	rcvr = FUNC2(sizeof(*rcvr), GFP_KERNEL);
	if (!rcvr)
		return -ENOMEM;
	rcvr->cmd = cmd;
	rcvr->netfn = netfn;
	rcvr->chans = chans;
	rcvr->user = user;

	FUNC4(&intf->cmd_rcvrs_mutex);
	/* Make sure the command/netfn is not already registered. */
	if (!FUNC0(intf, netfn, cmd, chans)) {
		rv = -EBUSY;
		goto out_unlock;
	}

	FUNC3(&rcvr->link, &intf->cmd_rcvrs);

 out_unlock:
	FUNC5(&intf->cmd_rcvrs_mutex);
	if (rv)
		FUNC1(rcvr);

	return rv;
}