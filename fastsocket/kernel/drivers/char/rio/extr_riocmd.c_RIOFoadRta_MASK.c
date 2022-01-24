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
struct Map {scalar_t__ ID; } ;
struct Host {int dummy; } ;
struct TYPE_2__ {int len; int* data; void* src_port; scalar_t__ src_unit; void* dest_port; scalar_t__ dest_unit; } ;
struct CmdBlk {TYPE_1__ Packet; } ;

/* Variables and functions */
 void* BOOT_RUP ; 
 int EIO ; 
 int ENXIO ; 
 int IFOAD ; 
 int IFOAD_MAGIC ; 
 struct CmdBlk* FUNC0 () ; 
 scalar_t__ FUNC1 (struct Host*,scalar_t__,struct CmdBlk*) ; 
 int /*<<< orphan*/  RIO_DEBUG_CMD ; 
 scalar_t__ RIO_FAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct Host *HostP, struct Map *MapP)
{
	struct CmdBlk *CmdBlkP;

	FUNC2(RIO_DEBUG_CMD, "FOAD RTA\n");

	CmdBlkP = FUNC0();

	if (!CmdBlkP) {
		FUNC2(RIO_DEBUG_CMD, "FOAD RTA: GetCmdBlk failed\n");
		return -ENXIO;
	}

	CmdBlkP->Packet.dest_unit = MapP->ID;
	CmdBlkP->Packet.dest_port = BOOT_RUP;
	CmdBlkP->Packet.src_unit = 0;
	CmdBlkP->Packet.src_port = BOOT_RUP;
	CmdBlkP->Packet.len = 0x84;
	CmdBlkP->Packet.data[0] = IFOAD;
	CmdBlkP->Packet.data[1] = 0;
	CmdBlkP->Packet.data[2] = IFOAD_MAGIC & 0xFF;
	CmdBlkP->Packet.data[3] = (IFOAD_MAGIC >> 8) & 0xFF;

	if (FUNC1(HostP, MapP->ID - 1, CmdBlkP) == RIO_FAIL) {
		FUNC2(RIO_DEBUG_CMD, "FOAD RTA: Failed to queue foad command\n");
		return -EIO;
	}
	return 0;
}