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
struct rtc_device {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct rtc_device* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_device*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	struct rtc_device *rtc = FUNC0(client);

	if (rtc)
		FUNC1(rtc);

	return 0;
}