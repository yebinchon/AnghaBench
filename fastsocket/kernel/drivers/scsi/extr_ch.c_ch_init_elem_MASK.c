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
typedef  int u_char ;
struct TYPE_6__ {TYPE_1__* device; } ;
typedef  TYPE_2__ scsi_changer ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_5__ {int lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int INITIALIZE_ELEMENT_STATUS ; 
 int FUNC0 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(scsi_changer *ch)
{
	int err;
	u_char cmd[6];

	FUNC2("INITIALIZE ELEMENT STATUS, may take some time ...\n");
	FUNC1(cmd,0,sizeof(cmd));
	cmd[0] = INITIALIZE_ELEMENT_STATUS;
	cmd[1] = ch->device->lun << 5;
	err = FUNC0(ch, cmd, NULL, 0, DMA_NONE);
	FUNC2("... finished\n");
	return err;
}