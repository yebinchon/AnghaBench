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
struct TYPE_6__ {unsigned char* cmnd; TYPE_1__* device; } ;
struct TYPE_5__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ Scsi_Cmnd ;

/* Variables and functions */
 int FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static char *FUNC3(Scsi_Cmnd *cmd, char *pos, char *buffer, int length)
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