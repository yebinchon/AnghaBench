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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1621_COM_START ; 
 int /*<<< orphan*/  DS1621_REG_CONF ; 
 int /*<<< orphan*/  DS1621_REG_CONFIG_1SHOT ; 
 int /*<<< orphan*/  DS1621_REG_CONFIG_POLARITY ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int polarity ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client)
{
	u8 conf, new_conf;

	new_conf = conf = FUNC0(client, DS1621_REG_CONF);
	/* switch to continuous conversion mode */
	new_conf &= ~DS1621_REG_CONFIG_1SHOT;

	/* setup output polarity */
	if (polarity == 0)
		new_conf &= ~DS1621_REG_CONFIG_POLARITY;
	else if (polarity == 1)
		new_conf |= DS1621_REG_CONFIG_POLARITY;
	
	if (conf != new_conf)
		FUNC2(client, DS1621_REG_CONF, new_conf);
	
	/* start conversion */
	FUNC1(client, DS1621_COM_START);
}