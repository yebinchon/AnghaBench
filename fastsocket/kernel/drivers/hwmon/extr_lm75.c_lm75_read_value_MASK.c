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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ LM75_REG_CONF ; 
 int FUNC0 (struct i2c_client*,scalar_t__) ; 
 int FUNC1 (struct i2c_client*,scalar_t__) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, u8 reg)
{
	int value;

	if (reg == LM75_REG_CONF)
		return FUNC0(client, reg);

	value = FUNC1(client, reg);
	return (value < 0) ? value : FUNC2(value);
}