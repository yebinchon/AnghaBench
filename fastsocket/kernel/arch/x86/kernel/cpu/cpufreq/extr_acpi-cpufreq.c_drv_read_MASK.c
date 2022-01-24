#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drv_cmd {int /*<<< orphan*/  mask; scalar_t__ val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_drv_read ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drv_cmd*,int) ; 

__attribute__((used)) static void FUNC2(struct drv_cmd *cmd)
{
	cmd->val = 0;

	FUNC1(FUNC0(cmd->mask), do_drv_read, cmd, 1);
}