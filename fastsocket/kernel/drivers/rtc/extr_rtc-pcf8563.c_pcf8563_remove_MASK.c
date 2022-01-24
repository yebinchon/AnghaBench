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
struct pcf8563 {scalar_t__ rtc; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct pcf8563* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcf8563*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct pcf8563 *pcf8563 = FUNC0(client);

	if (pcf8563->rtc)
		FUNC2(pcf8563->rtc);

	FUNC1(pcf8563);

	return 0;
}