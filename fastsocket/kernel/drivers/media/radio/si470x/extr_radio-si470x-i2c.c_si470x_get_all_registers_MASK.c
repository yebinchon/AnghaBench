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
typedef  int /*<<< orphan*/  u16 ;
struct si470x_device {int /*<<< orphan*/ * registers; TYPE_1__* client; } ;
struct i2c_msg {int member_2; void* member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 size_t FUNC0 (int) ; 
 int READ_REG_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC3(struct si470x_device *radio)
{
	int i;
	u16 buf[READ_REG_NUM];
	struct i2c_msg msgs[1] = {
		{ radio->client->addr, I2C_M_RD, sizeof(u16) * READ_REG_NUM,
			(void *)buf },
	};

	if (FUNC2(radio->client->adapter, msgs, 1) != 1)
		return -EIO;

	for (i = 0; i < READ_REG_NUM; i++)
		radio->registers[i] = FUNC1(buf[FUNC0(i)]);

	return 0;
}