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
struct s35390a {struct i2c_client** client; } ;
struct i2c_msg {int member_2; char* member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC1(struct s35390a *s35390a, int reg, char *buf, int len)
{
	struct i2c_client *client = s35390a->client[reg];
	struct i2c_msg msg[] = {
		{ client->addr, 0, len, buf },
	};

	if ((FUNC0(client->adapter, msg, 1)) != 1)
		return -EIO;

	return 0;
}