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
struct scsi_cmnd {unsigned char cmd_len; unsigned int* cmnd; TYPE_1__* device; } ;
struct atp_unit {unsigned int* ioport; unsigned int* pciport; TYPE_2__** id; int /*<<< orphan*/ * in_snd; int /*<<< orphan*/ * quend; int /*<<< orphan*/ * quhd; int /*<<< orphan*/ * last_cmd; int /*<<< orphan*/ * working; } ;
struct Scsi_Host {int /*<<< orphan*/  hostdata; } ;
struct TYPE_4__ {scalar_t__ last_len; struct scsi_cmnd* curr_req; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int SUCCESS ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned char FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC3(struct scsi_cmnd * SCpnt)
{
	unsigned char  j, k, c;
	struct scsi_cmnd *workrequ;
	unsigned int tmport;
	struct atp_unit *dev;	
	struct Scsi_Host *host;
	host = SCpnt->device->host;

	dev = (struct atp_unit *)&host->hostdata;
	c = FUNC2(SCpnt);
	FUNC1(" atp870u: abort Channel = %x \n", c);
	FUNC1("working=%x last_cmd=%x ", dev->working[c], dev->last_cmd[c]);
	FUNC1(" quhdu=%x quendu=%x ", dev->quhd[c], dev->quend[c]);
	tmport = dev->ioport[c];
	for (j = 0; j < 0x18; j++) {
		FUNC1(" r%2x=%2x", j, FUNC0(tmport++));
	}
	tmport += 0x04;
	FUNC1(" r1c=%2x", FUNC0(tmport));
	tmport += 0x03;
	FUNC1(" r1f=%2x in_snd=%2x ", FUNC0(tmport), dev->in_snd[c]);
	tmport= dev->pciport[c];
	FUNC1(" d00=%2x", FUNC0(tmport));
	tmport += 0x02;
	FUNC1(" d02=%2x", FUNC0(tmport));
	for(j=0;j<16;j++) {
	   if (dev->id[c][j].curr_req != NULL) {
		workrequ = dev->id[c][j].curr_req;
		FUNC1("\n que cdb= ");
		for (k=0; k < workrequ->cmd_len; k++) {
		    FUNC1(" %2x ",workrequ->cmnd[k]);
		}
		FUNC1(" last_lenu= %x ",(unsigned int)dev->id[c][j].last_len);
	   }
	}
	return SUCCESS;
}