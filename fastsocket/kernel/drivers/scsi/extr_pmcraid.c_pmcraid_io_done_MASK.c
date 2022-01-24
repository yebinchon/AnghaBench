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
typedef  int /*<<< orphan*/  u32 ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; } ;
struct TYPE_3__ {int /*<<< orphan*/  residual_data_length; int /*<<< orphan*/  ioasc; } ;
struct TYPE_4__ {TYPE_1__ ioasa; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pmcraid_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcraid_cmd*) ; 

__attribute__((used)) static void FUNC3(struct pmcraid_cmd *cmd)
{
	u32 ioasc = FUNC1(cmd->ioa_cb->ioasa.ioasc);
	u32 reslen = FUNC1(cmd->ioa_cb->ioasa.residual_data_length);

	if (FUNC0(cmd, reslen, ioasc) == 0)
		FUNC2(cmd);
}