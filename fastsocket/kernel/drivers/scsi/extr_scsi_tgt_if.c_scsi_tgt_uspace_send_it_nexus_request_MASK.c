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
typedef  scalar_t__ u64 ;
struct TYPE_4__ {int host_no; int function; int /*<<< orphan*/  initiator_id; scalar_t__ itn_id; } ;
struct TYPE_3__ {TYPE_2__ it_nexus_req; } ;
struct tgt_event {TYPE_1__ p; } ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int /*<<< orphan*/  TGT_KEVENT_IT_NEXUS_REQ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tgt_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct tgt_event*) ; 

int FUNC5(int host_no, u64 itn_id,
					  int function, char *initiator_id)
{
	struct tgt_event ev;
	int err;

	FUNC2(&ev, 0, sizeof(ev));
	ev.p.it_nexus_req.host_no = host_no;
	ev.p.it_nexus_req.function = function;
	ev.p.it_nexus_req.itn_id = itn_id;
	if (initiator_id)
		FUNC3(ev.p.it_nexus_req.initiator_id, initiator_id,
			sizeof(ev.p.it_nexus_req.initiator_id));

	FUNC0("%d %x %llx\n", host_no, function, (unsigned long long)itn_id);

	err = FUNC4(TGT_KEVENT_IT_NEXUS_REQ, &ev);
	if (err)
		FUNC1("tx buf is full, could not send\n");

	return err;
}