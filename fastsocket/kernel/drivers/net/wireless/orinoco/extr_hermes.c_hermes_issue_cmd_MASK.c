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
typedef  int u16 ;
struct hermes {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int CMD_BUSY_TIMEOUT ; 
 int EBUSY ; 
 int HERMES_CMD_BUSY ; 
 int /*<<< orphan*/  PARAM0 ; 
 int /*<<< orphan*/  PARAM1 ; 
 int /*<<< orphan*/  PARAM2 ; 
 int FUNC0 (struct hermes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hermes*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct hermes *hw, u16 cmd, u16 param0,
			    u16 param1, u16 param2)
{
	int k = CMD_BUSY_TIMEOUT;
	u16 reg;

	/* First wait for the command register to unbusy */
	reg = FUNC0(hw, CMD);
	while ((reg & HERMES_CMD_BUSY) && k) {
		k--;
		FUNC2(1);
		reg = FUNC0(hw, CMD);
	}
	if (reg & HERMES_CMD_BUSY)
		return -EBUSY;

	FUNC1(hw, PARAM2, param2);
	FUNC1(hw, PARAM1, param1);
	FUNC1(hw, PARAM0, param0);
	FUNC1(hw, CMD, cmd);

	return 0;
}