#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int unchar ;
struct TYPE_8__ {TYPE_3__* ogmb; } ;
struct TYPE_11__ {int next_ogmb; TYPE_2__* sh; TYPE_1__ mb; } ;
struct TYPE_10__ {int status; scalar_t__ scbptr; } ;
struct TYPE_9__ {int /*<<< orphan*/  host_lock; } ;
typedef  int /*<<< orphan*/  Scb ;
typedef  TYPE_3__ Mailbox ;
typedef  TYPE_4__ Adapter ;

/* Variables and functions */
 int OGMB_CNT ; 
 int START_OGMB ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC6(Adapter * host, Scb * scbptr)
/*
 *  Note: this can also be used for ICBs; just cast to the parm type.
 */
{
	int i, ogmb;
	unsigned long flags;
	unchar start_ogmb;
	Mailbox *ogmbs = host->mb.ogmb;
	int *next_ogmb = &(host->next_ogmb);

	FUNC2("wd7000_mail_out: 0x%06lx", (long) scbptr);

	/* We first look for a free outgoing mailbox */
	FUNC3(host->sh->host_lock, flags);
	ogmb = *next_ogmb;
	for (i = 0; i < OGMB_CNT; i++) {
		if (ogmbs[ogmb].status == 0) {
			FUNC2(" using OGMB 0x%x", ogmb);
			ogmbs[ogmb].status = 1;
			FUNC0((unchar *) ogmbs[ogmb].scbptr, (int) scbptr);

			*next_ogmb = (ogmb + 1) % OGMB_CNT;
			break;
		} else
			ogmb = (ogmb + 1) % OGMB_CNT;
	}
	FUNC4(host->sh->host_lock, flags);

	FUNC2(", scb is 0x%06lx", (long) scbptr);

	if (i >= OGMB_CNT) {
		/*
		 *  Alternatively, we might issue the "interrupt on free OGMB",
		 *  and sleep, but it must be ensured that it isn't the init
		 *  task running.  Instead, this version assumes that the caller
		 *  will be persistent, and try again.  Since it's the adapter
		 *  that marks OGMB's free, waiting even with interrupts off
		 *  should work, since they are freed very quickly in most cases.
		 */
		FUNC2(", no free OGMBs.\n");
		return (0);
	}

	FUNC5(host);

	start_ogmb = START_OGMB | ogmb;
	FUNC1(host, &start_ogmb, 1);

	FUNC2(", awaiting interrupt.\n");

	return (1);
}