#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* num; } ;
struct TYPE_5__ {int driver; int arg; TYPE_1__ parm; int /*<<< orphan*/  command; } ;
typedef  TYPE_2__ isdn_ctrl ;

/* Variables and functions */
 int /*<<< orphan*/  ISDN_CMD_SETEAZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void
FUNC1(int di, int ch)
{
	isdn_ctrl cmd;

	if (di < 0)
		return;
	cmd.driver = di;
	cmd.arg = ch;
	cmd.command = ISDN_CMD_SETEAZ;
	cmd.parm.num[0] = '\0';
	FUNC0(&cmd);
}