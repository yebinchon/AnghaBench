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
typedef  int u8 ;
struct stb6100_state {TYPE_1__* config; int /*<<< orphan*/  i2c; } ;
struct i2c_msg {int* buf; int len; int /*<<< orphan*/  flags; scalar_t__ addr; } ;
struct TYPE_2__ {scalar_t__ tuner_address; } ;

/* Variables and functions */
 int EINVAL ; 
 int EREMOTEIO ; 
 scalar_t__ FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int STB6100_NUMREGS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,char*,unsigned int,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/ * stb6100_regnames ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC4(struct stb6100_state *state, u8 buf[], int start, int len)
{
	int rc;
	u8 cmdbuf[len + 1];
	struct i2c_msg msg = {
		.addr	= state->config->tuner_address,
		.flags	= 0,
		.buf	= cmdbuf,
		.len	= len + 1
	};

	if (FUNC3(start < 1 || start + len > STB6100_NUMREGS)) {
		FUNC0(verbose, FE_ERROR, 1, "Invalid register range %d:%d",
			start, len);
		return -EINVAL;
	}
	FUNC2(&cmdbuf[1], buf, len);
	cmdbuf[0] = start;

	if (FUNC3(verbose > FE_DEBUG)) {
		int i;

		FUNC0(verbose, FE_DEBUG, 1, "    Write @ 0x%02x: [%d:%d]", state->config->tuner_address, start, len);
		for (i = 0; i < len; i++)
			FUNC0(verbose, FE_DEBUG, 1, "        %s: 0x%02x", stb6100_regnames[start + i], buf[i]);
	}
	rc = FUNC1(state->i2c, &msg, 1);
	if (FUNC3(rc != 1)) {
		FUNC0(verbose, FE_ERROR, 1, "(0x%x) write err [%d:%d], rc=[%d]",
			(unsigned int)state->config->tuner_address, start, len,	rc);
		return -EREMOTEIO;
	}
	return 0;
}