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
typedef  void* u64 ;
struct TYPE_3__ {int host_no; int function; void* mid; int /*<<< orphan*/  lun; void* tag; void* itn_id; } ;
struct TYPE_4__ {TYPE_1__ tsk_mgmt_req; } ;
struct tgt_event {TYPE_2__ p; } ;
struct scsi_lun {int dummy; } ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int /*<<< orphan*/  TGT_KEVENT_TSK_MGMT_REQ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_lun*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tgt_event*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct tgt_event*) ; 

int FUNC5(int host_no, u64 itn_id, int function,
				  u64 tag, struct scsi_lun *scsilun, void *data)
{
	struct tgt_event ev;
	int err;

	FUNC3(&ev, 0, sizeof(ev));
	ev.p.tsk_mgmt_req.host_no = host_no;
	ev.p.tsk_mgmt_req.itn_id = itn_id;
	ev.p.tsk_mgmt_req.function = function;
	ev.p.tsk_mgmt_req.tag = tag;
	FUNC2(ev.p.tsk_mgmt_req.lun, scsilun, sizeof(ev.p.tsk_mgmt_req.lun));
	ev.p.tsk_mgmt_req.mid = (u64) (unsigned long) data;

	FUNC0("%d %x %llx %llx\n", host_no, function, (unsigned long long) tag,
		(unsigned long long) ev.p.tsk_mgmt_req.mid);

	err = FUNC4(TGT_KEVENT_TSK_MGMT_REQ, &ev);
	if (err)
		FUNC1("tx buf is full, could not send\n");

	return err;
}