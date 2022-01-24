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
 int EINVAL ; 
 int FUNC0 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, int size)
{
	/* DL_ADDR_HB DL_ADDR_LB */
	int s = FUNC0(client, 0x801) << 8;
	s |= FUNC0(client, 0x800);

	if (size != s) {
		FUNC2(client, "firmware %s load failed\n",
				FUNC1(client));
		return -EINVAL;
	}

	FUNC3(client, "loaded %s firmware (%d bytes)\n",
			FUNC1(client), size);
	return 0;
}