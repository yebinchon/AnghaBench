#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ screen; scalar_t__ plan; int /*<<< orphan*/  eazmsn; void* si2; void* si1; int /*<<< orphan*/  phone; } ;
struct TYPE_6__ {TYPE_1__ setup; } ;
struct TYPE_7__ {TYPE_2__ parm; } ;
typedef  TYPE_3__ isdn_ctrl ;

/* Variables and functions */
 void* FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(char *setup, isdn_ctrl * cmd)
{
	char *t = setup;
	char *s = FUNC1(t, ',');

	*s++ = '\0';
	FUNC2(cmd->parm.setup.phone, t, sizeof(cmd->parm.setup.phone));
	s = FUNC1(t = s, ',');
	*s++ = '\0';
	if (!FUNC3(t))
		cmd->parm.setup.si1 = 0;
	else
		cmd->parm.setup.si1 = FUNC0(t, NULL, 10);
	s = FUNC1(t = s, ',');
	*s++ = '\0';
	if (!FUNC3(t))
		cmd->parm.setup.si2 = 0;
	else
		cmd->parm.setup.si2 =
		    FUNC0(t, NULL, 10);
	FUNC2(cmd->parm.setup.eazmsn, s, sizeof(cmd->parm.setup.eazmsn));
	cmd->parm.setup.plan = 0;
	cmd->parm.setup.screen = 0;
}