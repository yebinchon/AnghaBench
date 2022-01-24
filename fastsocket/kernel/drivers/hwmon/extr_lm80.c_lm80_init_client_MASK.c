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
 int /*<<< orphan*/  LM80_REG_CONFIG ; 
 int /*<<< orphan*/  LM80_REG_RES ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct i2c_client *client)
{
	/* Reset all except Watchdog values and last conversion values
	   This sets fan-divs to 2, among others. This makes most other
	   initializations unnecessary */
	FUNC0(client, LM80_REG_CONFIG, 0x80);
	/* Set 11-bit temperature resolution */
	FUNC0(client, LM80_REG_RES, 0x08);

	/* Start monitoring */
	FUNC0(client, LM80_REG_CONFIG, 0x01);
}