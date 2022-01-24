#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ phase; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; } ;
struct TYPE_9__ {int /*<<< orphan*/  base; int /*<<< orphan*/ * cur_cmd; } ;
typedef  TYPE_3__ imm_struct ;
struct TYPE_7__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECT_NORMAL ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *cmd)
{
	imm_struct *dev = FUNC1(cmd->device->host);

	if (cmd->SCp.phase)
		FUNC2(dev);
	dev->cur_cmd = NULL;	/* Forget the problem */

	FUNC0(dev, CONNECT_NORMAL);
	FUNC3(dev->base);
	FUNC4(1);		/* device settle delay */
	FUNC2(dev);
	FUNC4(1);		/* device settle delay */
	return SUCCESS;
}