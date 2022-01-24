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
struct max17040_chip {int online; TYPE_1__* pdata; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int (* battery_online ) () ;} ;

/* Variables and functions */
 struct max17040_chip* FUNC0 (struct i2c_client*) ; 
 int FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	struct max17040_chip *chip = FUNC0(client);

	if (chip->pdata->battery_online)
		chip->online = chip->pdata->battery_online();
	else
		chip->online = 1;
}