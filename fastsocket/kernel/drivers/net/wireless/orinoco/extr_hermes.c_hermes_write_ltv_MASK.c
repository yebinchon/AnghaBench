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
 int EINVAL ; 
 int HERMES_CMD_ACCESS ; 
 int HERMES_CMD_WRITE ; 
 int HERMES_DATA0 ; 
 int HERMES_DATA1 ; 
 int FUNC0 (struct hermes*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hermes*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hermes*,int,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct hermes*,int,int) ; 

__attribute__((used)) static int FUNC4(struct hermes *hw, int bap, u16 rid,
			    u16 length, const void *value)
{
	int dreg = bap ? HERMES_DATA1 : HERMES_DATA0;
	int err = 0;
	unsigned count;

	if (length == 0)
		return -EINVAL;

	err = FUNC0(hw, bap, rid, 0);
	if (err)
		return err;

	FUNC3(hw, dreg, length);
	FUNC3(hw, dreg, rid);

	count = length - 1;

	FUNC2(hw, dreg, value, count << 1);

	err = FUNC1(hw, HERMES_CMD_ACCESS | HERMES_CMD_WRITE,
				rid, NULL);

	return err;
}