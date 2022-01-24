#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {scalar_t__ cmd_len; int /*<<< orphan*/  cmnd; } ;
struct TYPE_10__ {scalar_t__ sent_command; } ;
struct TYPE_12__ {int /*<<< orphan*/  phase; TYPE_1__ SCp; } ;
struct TYPE_13__ {TYPE_3__ scsi; TYPE_2__* host; struct scsi_cmnd* SCpnt; } ;
struct TYPE_11__ {int /*<<< orphan*/  host_no; } ;
typedef  TYPE_4__ AS_Host ;

/* Variables and functions */
 int /*<<< orphan*/  CMND_XFERINFO ; 
 int /*<<< orphan*/  PHASE_COMMAND ; 
 int /*<<< orphan*/  SBIC_TRANSCNTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(AS_Host *host)
{
	struct scsi_cmnd *SCpnt = host->SCpnt;

    FUNC3(host, SBIC_TRANSCNTH, 0);
    FUNC4(host, 0);
    FUNC4(host, SCpnt->cmd_len - host->scsi.SCp.sent_command);

    FUNC0(host, CMND_XFERINFO);

    if (FUNC1(host, SCpnt->cmnd,
	(int *)&host->scsi.SCp.sent_command, SCpnt->cmd_len, 1000000))
	FUNC2("scsi%d: timeout while sending command\n", host->host->host_no);

    host->scsi.phase = PHASE_COMMAND;
}