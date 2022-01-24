#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {unsigned char* cmnd; TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static char *FUNC3(struct scsi_cmnd *cmd, char *pos, char *buffer,
			      int length)
{
    int i, s;
    unsigned char *command;
    FUNC2("scsi%d: destination target %d, lun %d\n",
	    FUNC1(cmd), cmd->device->id, cmd->device->lun);
    FUNC2("        command = ");
    command = cmd->cmnd;
    FUNC2("%2d (0x%02x)", command[0], command[0]);
    for (i = 1, s = FUNC0(command[0]); i < s; ++i)
	FUNC2(" %02x", command[i]);
    FUNC2("\n");
    return pos;
}