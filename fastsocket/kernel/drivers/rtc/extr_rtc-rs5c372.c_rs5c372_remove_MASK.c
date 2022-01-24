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
struct rs5c372 {int /*<<< orphan*/  rtc; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct rs5c372* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct rs5c372*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct rs5c372 *rs5c372 = FUNC0(client);

	FUNC3(rs5c372->rtc);
	FUNC2(&client->dev);
	FUNC1(rs5c372);
	return 0;
}