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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int,void*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, int gpio,
			unsigned int ngpio, void *c)
{
	FUNC0(ngpio < 8);

	FUNC2(client, gpio, 4, c);
	FUNC1(client, gpio+4, 4, c);

	return 0;
}