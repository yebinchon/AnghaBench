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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1021_REG_CONFIG_R ; 
 int /*<<< orphan*/  ADM1021_REG_CONFIG_W ; 
 int /*<<< orphan*/  ADM1021_REG_CONV_RATE_W ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	/* Enable ADC and disable suspend mode */
	FUNC1(client, ADM1021_REG_CONFIG_W,
		FUNC0(client, ADM1021_REG_CONFIG_R) & 0xBF);
	/* Set Conversion rate to 1/sec (this can be tinkered with) */
	FUNC1(client, ADM1021_REG_CONV_RATE_W, 0x04);
}