#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_6__ {int nbchannel; } ;
struct capi_ctr {TYPE_1__ profile; scalar_t__ driverdata; } ;
struct TYPE_7__ {int level3cnt; int datablkcnt; int datablklen; } ;
typedef  TYPE_2__ capi_register_params ;
struct TYPE_8__ {TYPE_4__* card; } ;
typedef  TYPE_3__ avmctrl_info ;
struct TYPE_9__ {unsigned int port; int /*<<< orphan*/  lock; } ;
typedef  TYPE_4__ avmcard ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct capi_ctr *ctrl,
				u16 appl,
				capi_register_params *rp)
{
	avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
	avmcard *card = cinfo->card;
	unsigned int port = card->port;
	unsigned long flags;
	int nconn, want = rp->level3cnt;

	if (want > 0) nconn = want;
	else nconn = ctrl->profile.nbchannel * -want;
	if (nconn == 0) nconn = ctrl->profile.nbchannel;

	FUNC2(&card->lock, flags);
	FUNC0(port, SEND_REGISTER);
	FUNC1(port, appl);
	FUNC1(port, 1024 * (nconn+1));
	FUNC1(port, nconn);
	FUNC1(port, rp->datablkcnt);
	FUNC1(port, rp->datablklen);
	FUNC3(&card->lock, flags);
}