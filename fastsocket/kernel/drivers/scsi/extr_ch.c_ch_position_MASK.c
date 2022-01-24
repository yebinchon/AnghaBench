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
typedef  int u_int ;
typedef  int u_char ;
struct TYPE_6__ {int* firsts; TYPE_1__* device; } ;
typedef  TYPE_2__ scsi_changer ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_5__ {int lun; } ;

/* Variables and functions */
 size_t CHET_MT ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int POSITION_TO_ELEMENT ; 
 int FUNC0 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(scsi_changer *ch, u_int trans, u_int elem, int rotate)
{
	u_char  cmd[10];

	FUNC1("position: 0x%x\n",elem);
	if (0 == trans)
		trans = ch->firsts[CHET_MT];
	FUNC2(cmd,0,sizeof(cmd));
	cmd[0]  = POSITION_TO_ELEMENT;
	cmd[1]  = ch->device->lun << 5;
	cmd[2]  = (trans >> 8) & 0xff;
	cmd[3]  =  trans       & 0xff;
	cmd[4]  = (elem  >> 8) & 0xff;
	cmd[5]  =  elem        & 0xff;
	cmd[8]  = rotate ? 1 : 0;
	return FUNC0(ch, cmd, NULL, 0, DMA_NONE);
}