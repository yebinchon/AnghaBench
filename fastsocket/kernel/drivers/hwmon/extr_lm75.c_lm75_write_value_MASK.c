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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ LM75_REG_CONF ; 
 int FUNC0 (struct i2c_client*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, u8 reg, u16 value)
{
	if (reg == LM75_REG_CONF)
		return FUNC0(client, reg, value);
	else
		return FUNC1(client, reg, FUNC2(value));
}