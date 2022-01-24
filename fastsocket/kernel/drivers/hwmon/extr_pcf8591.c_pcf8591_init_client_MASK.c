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
struct pcf8591_data {int /*<<< orphan*/  aout; int /*<<< orphan*/  control; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCF8591_INIT_AOUT ; 
 int /*<<< orphan*/  PCF8591_INIT_CONTROL ; 
 struct pcf8591_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client)
{
	struct pcf8591_data *data = FUNC0(client);
	data->control = PCF8591_INIT_CONTROL;
	data->aout = PCF8591_INIT_AOUT;

	FUNC2(client, data->control, data->aout);

	/* The first byte transmitted contains the conversion code of the
	   previous read cycle. FLUSH IT! */
	FUNC1(client);
}