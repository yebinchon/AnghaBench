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
typedef  size_t u8 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int len; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm93_block_buffer ; 
 TYPE_1__* lm93_block_read_cmds ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client, u8 fbn, u8 *values)
{
	int i, result=0;

	for (i = 1; i <= MAX_RETRIES; i++) {
		result = FUNC1(client,
			lm93_block_read_cmds[fbn].cmd, lm93_block_buffer);

		if (result == lm93_block_read_cmds[fbn].len) {
			break;
		} else {
			FUNC0(&client->dev,"lm93: block read data failed, "
				 "command 0x%02x.\n",
				 lm93_block_read_cmds[fbn].cmd);
			FUNC2(i + 3);
		}
	}

	if (result == lm93_block_read_cmds[fbn].len) {
		FUNC3(values,lm93_block_buffer,lm93_block_read_cmds[fbn].len);
	} else {
		/* <TODO> what to do in case of error? */
	}
}