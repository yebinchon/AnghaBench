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
typedef  int u32 ;
struct carl9170_psm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct carl9170_cmd {TYPE_1__ psm; } ;
struct ar9170 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_CMD_PSM_ASYNC ; 
 int CARL9170_PSM_SLEEP ; 
 int ENOMEM ; 
 int FUNC0 (struct ar9170*,struct carl9170_cmd*,int) ; 
 struct carl9170_cmd* FUNC1 (struct ar9170*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct ar9170 *ar, const bool ps)
{
	struct carl9170_cmd *cmd;
	u32 state;

	cmd = FUNC1(ar, CARL9170_CMD_PSM_ASYNC,
			       sizeof(struct carl9170_psm));
	if (!cmd)
		return -ENOMEM;

	if (ps) {
		/* Sleep until next TBTT */
		state = CARL9170_PSM_SLEEP | 1;
	} else {
		/* wake up immediately */
		state = 1;
	}

	cmd->psm.state = FUNC2(state);
	return FUNC0(ar, cmd, true);
}