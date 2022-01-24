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
typedef  int /*<<< orphan*/  uint8_t ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct i2c_client *client, uint8_t *state)
{
	int i;

	for (i = 0x8; i <= 0xe; i++)
		FUNC0(client, i, state[i]);
}