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
struct TYPE_3__ {void* tag; int /*<<< orphan*/  data_len; int /*<<< orphan*/  attribute; int /*<<< orphan*/  lun; int /*<<< orphan*/  scb; void* itn_id; int /*<<< orphan*/  host_no; } ;
struct TYPE_4__ {TYPE_1__ cmd_req; } ;
struct tgt_event {TYPE_2__ p; } ;
struct scsi_lun {int dummy; } ;
struct scsi_cmnd {int /*<<< orphan*/  tag; struct scsi_lun* cmnd; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int /*<<< orphan*/  TGT_KEVENT_CMD_REQ ; 
 int /*<<< orphan*/  FUNC0 (char*,struct scsi_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_lun*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tgt_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 struct Scsi_Host* FUNC5 (struct scsi_cmnd*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct tgt_event*) ; 

int FUNC7(struct scsi_cmnd *cmd, u64 itn_id,
			     struct scsi_lun *lun, u64 tag)
{
	struct Scsi_Host *shost = FUNC5(cmd);
	struct tgt_event ev;
	int err;

	FUNC3(&ev, 0, sizeof(ev));
	ev.p.cmd_req.host_no = shost->host_no;
	ev.p.cmd_req.itn_id = itn_id;
	ev.p.cmd_req.data_len = FUNC4(cmd);
	FUNC2(ev.p.cmd_req.scb, cmd->cmnd, sizeof(ev.p.cmd_req.scb));
	FUNC2(ev.p.cmd_req.lun, lun, sizeof(ev.p.cmd_req.lun));
	ev.p.cmd_req.attribute = cmd->tag;
	ev.p.cmd_req.tag = tag;

	FUNC0("%p %d %u %x %llx\n", cmd, shost->host_no,
		ev.p.cmd_req.data_len, cmd->tag,
		(unsigned long long) ev.p.cmd_req.tag);

	err = FUNC6(TGT_KEVENT_CMD_REQ, &ev);
	if (err)
		FUNC1("tx buf is full, could not send\n");

	return err;
}