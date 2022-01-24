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
typedef  int u8 ;
struct stv6110x_state {int /*<<< orphan*/  i2c; struct stv6110x_config* config; } ;
struct stv6110x_config {int /*<<< orphan*/  addr; } ;
struct i2c_msg {int* buf; int len; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 

__attribute__((used)) static int FUNC3(struct stv6110x_state *stv6110x, int start, u8 data[], int len)
{
	int ret;
	const struct stv6110x_config *config = stv6110x->config;
	u8 buf[len + 1];
	struct i2c_msg msg = {
		.addr = config->addr,
		.flags = 0,
		.buf = buf,
		.len = len + 1
	};

	if (start + len > 8)
		return -EINVAL;

	buf[0] = start;
	FUNC2(&buf[1], data, len);

	ret = FUNC1(stv6110x->i2c, &msg, 1);
	if (ret != 1) {
		FUNC0(FE_ERROR, 1, "I/O Error");
		return -EREMOTEIO;
	}

	return 0;
}